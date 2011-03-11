module PagesHelper
  # Return a  title on a per-page basis.
  def title
    base_title = "Ruby on Rails 3 Tutorial Sample App"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end
