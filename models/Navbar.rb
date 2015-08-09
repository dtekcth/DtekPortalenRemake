class NavbarItem
    attr_accessor :name
    attr_accessor :route

    def initialize(route, name)
        @name = name
        @route = route
    end

    def Render()
        "<li class=\"navbar-item menu-item\"><a href=\"#{@route}\">#{@name}</a></li>"
    end
end

class DropdownNavbarItem < NavbarItem
    @mItems = []

    def initialize(route, name, items)
        @name = name
        @route = route
        @mItems = []
    end

    def AddItem(item)
        @mItems.push item
    end

    def GetItems()
        @mItems
    end

    def Render()
        output = "<li class=\"navbar-item menu-item dropdown-item\">#{@name} <span class=\"arrow-down\">▼</span>"
        output += "<ul class=\"u-pull-right dropdown-menu\">"
        @mItems.each do | item |
            output += item.Render()
        end
        output += "</ul></li>"

        output
    end
end

# Model of the topbars navigation fields
class Navbar
    @@sItems = []

    # Register a new item
    def self.RegisterItem(route, name)
        item = NavbarItem.new(route, name)
        @@sItems.push(item)
    end

    # Register a new dropdown item
    def self.RegisterDropdownItem(route, name, items)
        @@sItems.push(DropdownNavbarItem.new(route, name, items))
    end

    # Return a list of navbar items
    def self.GetItems()
        @@sItems
    end
end
