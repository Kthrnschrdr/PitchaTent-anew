class Person < ActiveRecord::Base
  has_and_belongs_to_many :parks
  has_many :stories
  
  attr_accessor :location
  attr_accessible :latitude, :longitude, :name
  
  extend Geocoder::Model::ActiveRecord
  geocoded_by :location   # can also be an IP address
  after_validation :geocode 

end
