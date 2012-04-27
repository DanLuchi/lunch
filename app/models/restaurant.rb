class Restaurant < ActiveRecord::Base
  has_many :user_restauants
  has_many :users, :through => :user_restauants
  has_many :lunch_restauants
  has_many :lunches, :through => :lunch_restauants

  attr_accessible :name, :yelp_url
end
