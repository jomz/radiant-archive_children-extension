# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application_controller'
require 'radiant-archive_children-extension/version'
class ArchiveChildrenExtension < Radiant::Extension
  version RadiantArchiveChildrenExtension::VERSION
  description "Adds archive_children to Radiant."
  url "http://yourwebsite.com/archive_children"
  
  # extension_config do |config|
  #   config.gem 'some-awesome-gem'
  #   config.after_initialize do
  #     run_something
  #   end
  # end

  # See your config/routes.rb file in this extension to define custom routes
  
  def activate
    Page.send(:include, ArchiveChildrenTags)
    # tab 'Content' do
    #   add_item "Archive Children", "/admin/archive_children", :after => "Pages"
    # end
  end
end
