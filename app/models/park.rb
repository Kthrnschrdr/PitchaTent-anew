class Park < ActiveRecord::Base
  attr_accessible :address, :latitude, :longitude, :name, :url
end
