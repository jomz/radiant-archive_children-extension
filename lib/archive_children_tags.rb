module ArchiveChildrenTags
  include Radiant::Taggable

    desc %{
    Aggregates the children of all ArchivePages. Inside this tag, r:children:each works as expected.
    
    *Usage*:
    
    <pre><code><r:archive_children:children:each> ... </r:archive_children:children:each></code></pre>
  }
  tag "archive_children" do |tag|
    parent_ids = ArchivePage.all.map(&:id)
    tag.locals.parent_ids = parent_ids
    tag.expand
  end
  
  tag "archive_children:children:each" do |tag|
    render_children_with_pagination(tag, :aggregate => true)
  end
  
  tag "archive_children:children:first" do |tag|
    options = aggregate_children(tag)
    children = Page.find(:all, options)
    if first = children.first
      tag.locals.page = first
      tag.expand
    end
  end
  
  tag "archive_children:children:last" do |tag|
    options = aggregate_children(tag)
    children = Page.find(:all, options)
    if first = children.first
      tag.locals.page = first
      tag.expand
    end
  end
  
  tag 'archive_children:children:each:if_first' do |tag|
    tag.expand if tag.locals.first_child
  end
  
  tag 'archive_children:children:each:if_last' do |tag|
    tag.expand if tag.locals.last_child
  end
end