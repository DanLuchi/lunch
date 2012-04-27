# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.create(:name => 'La Cumbre', :yelp_url => 'http://www.yelp.com/biz/la-cumbre-taqueria-san-mateo')
Restaurant.create(:name => 'Slow Mexico', :yelp_url => 'http://www.yelp.com/biz/el-sinaloense-san-mateo')
Restaurant.create(:name => 'Alhana', :yelp_url => 'http://www.yelp.com/biz/alhana-foods-san-mateo')
Restaurant.create(:name => 'Curry Up Now', :yelp_url => 'http://www.yelp.com/biz/curry-up-now-san-mateo-4')