class Location < ActiveRecord::Base
  has_and_belongs_to_many :movies
  attr_accessible :address, :fun_fact, :longitude, :latitude#I removed movie_id because I created a bridge table between locations and movies
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  #acts_as_gmappable

  #def gmaps4rails_address
   # self.address
  #end

end
