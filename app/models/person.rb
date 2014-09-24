class Person < ActiveRecord::Base
  has_and_belongs_to_many :parks
  has_many :stories
  
  attr_accessor :location
  attr_accessible :latitude, :longitude, :name, :email, :password, :password_confirmation
  
  extend Geocoder::Model::ActiveRecord
  geocoded_by :location   # can also be an IP address
  after_validation :geocode 
  
  validates :name, presence: true, uniqueness: true
  validates :email,  presence: true, uniqueness: true
  validates :password, presence: true , confirmation: true
  validates :password_confirmation, presence: true

  has_secure_password
  

end
