class UserRestaurant < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant

  attr_accessible :user_id, :restaurant_id
end
