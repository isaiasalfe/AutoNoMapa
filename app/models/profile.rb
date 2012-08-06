class Profile < ActiveRecord::Base
  attr_accessible :cell_phone, :experience, :name, :nickname, :phone
end
