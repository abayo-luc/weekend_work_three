# In this exercise, we've already implemented the class, and you have to write the
# driver code.
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method

# The driver code
puts "TESTING the Person class..."
puts

customer = HotelReservation.new({customer_name: "Jean Luc", date: "20-Jan-2016", room_number: 14})

result = customer.customer_name
puts "first_name returned:"
puts
puts

if result == "Jean Luc"
  puts "PASS!"
else
  puts "F"
end
puts

result = customer.date

puts "date returned:"
puts result
puts

if result == "20-Jan-2016"
  puts "PASS!"
else
  puts "F"
end
puts

result = customer.room_number

puts "room_number returned:"
puts result
puts

if result == 14
  puts "PASS!"
else
  puts "F"
end

customer.add_a_fridge
result = customer.amenities[0]
puts "First amenity returned:"
puts result
puts

if result == "fridge"
  puts "PASS!"
else
  puts "F"
end
customer.add_a_crib
result = customer.amenities[1]
puts "Second amenity returned:"
puts result
puts

if result == "crib"
  puts "PASS!"
else
  puts "F"
end
customer.add_a_custom_amenity("Self-controlled air conditioning")
result = customer.amenities[2]
puts "customer amenity returned:"
puts result
puts

if result == "Self-controlled air conditioning"
  puts "PASS!"
else
  puts "F"
end
