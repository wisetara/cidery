class Location < ActiveRecord::Base
  has_many :user_locations
  has_many :users, :through => :user_locations

  validates :place_name, presence: true

end
