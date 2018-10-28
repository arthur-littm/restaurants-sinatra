require "faker"

10.times do
  restaurant = Restaurant.new(
    name: Faker::Cat.name,
    address: Faker::Address.city
    )
  restaurant.save

end

