module NavigationHelpers
  def path_to(page_name)
    case page_name

    when /the homepage/
      root_path
    when /the list of (.+)/
      send "#{$1}_path"
    when /the show page for (.+)/
      polymorphic_path(model($1))
    else
      raise "Can't find mapping from \"#{page_name}\" to a path."
    end
  end
end

World(NavigationHelpers)
