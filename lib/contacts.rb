require 'pry'

  # This is the array we will be passing into the remove_strawberry method
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we", 
      favorite_ice_cream_flavors: ["chocolate", "vanilla"]
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }
  
def remove_strawberry(contacts)
    contacts.each do |name, data|
      if name == "Freddy Mercury"
        data.each do |ice_cream, flavor|
          if ice_cream == :favorite_ice_cream_flavors
            flavor.delete_if{|type| type = "strawberry"}
          end
        end
      end
    end
end
