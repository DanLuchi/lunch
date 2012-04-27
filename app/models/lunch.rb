class Lunch < ActiveRecord::Base
  has_many :lunch_restaurants
  has_many :restaurants, :through => :lunch_restaurants
  belongs_to :user_id

  attr_accessor :restaurant_ids
  after_save :update_restaurants
  
  #after save callback to create and delete lunch_restaurants
  def update_restaurants
    unless restaurant_ids.nil?
      #delete lunch_restaurants that are no longer in the list of restaurant_ids
      self.lunch_restaurants.each do |lr|
        lr.destroy unless restaurant_ids.include?(lr.restaurant.id.to_s)
        restaurant_ids.delete(lr.restaurant_id.to_s)
      end

      #add lunch_restaurants that are in the list of restaurant_ids
      restaurant_ids.each do |r|
        self.lunch_restaurant.create(:restaurant_id => r) unless r.blank?
      end
      
      reload
      self.restaurant_ids = nil
    end
  end
end
