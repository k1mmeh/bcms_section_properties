Section # must ensure that the core section class loads first

#Section.has_many :section_property_values
#Section.after_save :set_new_section_property_values
#module SectionPropertyExtensions
#  module ClassMethods

#  end

#  module InstanceMethods
#      end
#end

#Section.send :include, SectionPropertyExtensions::InstanceMethods

class Section
  has_many :section_property_values
  require 'ruby-debug'
  after_save :set_new_section_property_values

  def section_property_from_key(key)
      property = SectionProperty.find_by_key(key)
      return nil unless property

      return self.section_property_values.detect {|p| p.section_property_id == property.id}
    end

    def show_section_property(key)
      property = section_property_from_key(key)
      return nil unless property

      return property.value
    end

    def section_properties=(properties_hash)
      return unless properties_hash.is_a?(Hash)

      update, add = [], []
      properties_hash.each do |k, v|
        sp = SectionProperty.find_by_key(k)
        next unless sp

        #if existing = self.section_property_from_key(k)
        #  existing.value = v
        #  update << existing
        #else
          add << {:section_property_id => sp.id, :value => v}
        #end
      end

      self.section_property_values.build(add)
#      @new_section_property_values = update + add
    end

    def section_properties
      #return @new_section_property_values if @new_section_property_values

      return self.section_property_values
    end

    private

      def set_new_section_property_values
        logger.error(@new_section_property_values.class)
        
        if @new_section_property_values
          self.section_property_values = @new_section_property_values
        end

        return true
      end


end
