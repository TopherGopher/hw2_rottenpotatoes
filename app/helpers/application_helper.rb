module ApplicationHelper
  def sortable(column, title = nil)
    title ||= column.titlesize
    #css_class = column == sort_column ? "current #{sort_direction}" : nil
    direction = (column == sort_column) && sort_direction == "asc" ? "desc" : "asc"
    css_class = "hilite"
    link_to title, {:sort => column, :direction => direction}, {:class => css_class}
  end
  # Checks if a number is odd:
  def oddness(count)
    count.odd? ?  "odd" :  "even"
  end
end
