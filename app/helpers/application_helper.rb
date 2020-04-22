module ApplicationHelper
  # Returns a custom title based on input
  def full_title(page_title = '')
    base_title = 'Clubhouse'
    if page_title.empty?
      base_title
    else
      page_title + ' | ' + base_title
    end
  end
end
