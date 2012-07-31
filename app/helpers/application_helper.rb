module ApplicationHelper
   # Return a title on a per-page basis.
  def title
    base_title = "Letters "
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  def logo
    image_tag("logo.png", :alt => "Letter print", :class => "round")
  end
  
  def letter
    image_tag("letter.png", :alt => "BROKEN FILE", :class => "round")
  end
  
  
end
