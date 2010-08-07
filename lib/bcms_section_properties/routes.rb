module Cms::Routes
  def routes_for_bcms_section_properties
    namespace(:cms) do |cms|
      #cms.content_blocks :analytics_tools
    end  
  end
end
