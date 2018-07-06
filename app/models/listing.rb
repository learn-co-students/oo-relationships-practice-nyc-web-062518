class Listing
	
	attr_accessor :city

	@@all = []

	def initialize(city)
		@city = city
		@@all << self
	end

	def self.all
		@@all
	end

	def guests
		self.trips.map do |trip|
			trip.guest
		end
	end

	def trips
		Trip.all.select do |trip|
			trip.listing == self
		end
	end

	def trip_count
		self.trips.count
	end

	def self.find_all_by_city(city)
		self.all.select do |listing|
			listing.city == city
		end
	end

	def self.most_popular
		listing_hash = {}
		self.all.map do |listing|
			if !listing_hash[listing]
				listing_hash[listing] = 1
			else
				listing_hash[listing] += 1
			end
		end
		listing_hash.sort_by {|listing, count| count}.reverse[0][0]
	end

end