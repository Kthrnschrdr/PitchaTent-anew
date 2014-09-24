class Story < ActiveRecord::Base
  belongs_to :person
  belongs_to :park
  validates :story, presence: true
  
  attr_accessible :park_id, :person_id, :story, :title
  
end
