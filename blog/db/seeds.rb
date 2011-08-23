# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

user = User.create :email => 'gordon@primate.co.uk', :password => 'primate', :password_confirmation => 'primate'
Category.create [
  {:name => 'Programming'}, 
  {:name => 'Event'}, 
  {:name => 'Travel'}, 
  {:name => 'Music'}, 
  {:name => 'TV'}
  ]
user.articles.create :title => 'Advanced Active Record', :body => 'Body goes here', :published_at => Date.today
user.articles.create :title => 'One-to-many associations', :body => 'Second body goes here', :published_at => Date.today
user.articles.create :title => 'Associations', :body => 'Third body goes here', :published_at => Date.today