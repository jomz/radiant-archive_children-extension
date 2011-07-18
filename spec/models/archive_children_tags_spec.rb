require File.dirname(__FILE__) + '/../spec_helper'

describe "Archive Children Tags" do
  dataset :home_page, :archive
  
  it '<r:archive_children:children:each><r:title /> </r:archive_children:children:each> should iterate over all children of ArchivePages' do
    pages(:home).should render("<r:archive_children:children:each><r:title /> </r:archive_children:children:each>").as('Foo Bar Baz ')
  end
  it '<r:archive_children:children:each:if_first:title /> should only output the title of the first archive child page' do
    pages(:home).should render("<r:archive_children:children:each:if_first:title />").as('Foo')
  end

end