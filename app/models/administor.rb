class Administor < ActiveRecord::Base
  attr_accessor  :name, :password
  
  validates :names, :presence => true
  #validates :password, :presence => true
end
