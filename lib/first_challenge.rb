def first_challenge
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we", 
      favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }
  
  contacts.each do |person, data|
    if person == "Freddy Mercury"
      data.each do |data, attribute|
        if data == :favorite_icecream_flavors
          attribute.delete("strawberry")
        end 
      end
    end
  end 
  contacts
end
