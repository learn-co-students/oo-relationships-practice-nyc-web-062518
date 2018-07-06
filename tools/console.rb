require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# listing_one = Listing.new("shanghai")
# listing_two = Listing.new("new york")

# guest_one = Guest.new("rose")
# guest_two = Guest.new("joe")

# trip_one = Trip.new(listing_one, guest_one)
# trip_two = Trip.new(listing_two, guest_two)
# trip_three = Trip.new(listing_two, guest_one)

Pry.start
