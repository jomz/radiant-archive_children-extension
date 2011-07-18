class ArchiveDataset < Dataset::Base
  uses :home_page
  
  def load
    create_page "News", :class_name => "ArchivePage" do
      create_page "Foo",  :published_at => DateTime.parse('2000-12-01 08:41:07')
      create_page "Bar",  :published_at => DateTime.parse('2001-02-09 08:42:04')
      create_page "Baz",  :published_at => DateTime.parse('2001-02-24 12:02:43')
      create_page "Draft Article",:status_id => Status[:draft].id
    end
    
  end
  
end
