class NavbarItem
    include JSONable

    attr_accessor :name, :route

    def initialize(route, name)
        self.name = name
        self.route = route
    end
end

class DropdownNavbarItem < NavbarItem
    include JSONable

    attr_accessor :name, :route, :mItems

    def initialize(route, name, items)
        self.name = name
        self.route = route
        self.mItems = []
    end

    def AddItem(item)
        self.mItems.push item
    end

    def GetItems()
        self.mItems
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
