# app/models/user.rb
class User < ActiveRecord::Base
  attr_accessor  :name, :password, :password_confirmation  
  
  validates :names, :presence => true
  #validates :password, :presence => true
end