class Profile < ActiveRecord::Base
  attr_accessible :cell_phone, :experience, :name, :nickname, :phone
  validates_presence_of :name, :cell_phone, :phone, :experience
end
