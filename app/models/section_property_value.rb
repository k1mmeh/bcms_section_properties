class SectionPropertyValue < ActiveRecord::Base

  belongs_to :section
  belongs_to :section_property

end
