Section # must ensure that the core section class loads first
class Section < ActiveRecord::Base

  has_many :section_property_values

  def section_property_by_key(key)
    property = SectionProperty.find_by_key(key)
    return nil unless property
    
    @section_property_values ||= self.section_property_values
    return @section_property_values.detect {|spv| spv.section_property_id = property.id}
  end

  def show_section_property(key)
    property = section_property_by_key(key)
    return nil unless property

    return property.value
  end

end
