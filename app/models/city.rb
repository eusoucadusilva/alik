class City < ActiveRecord::Base

	attr_accessible :name, :state

	has_many :users

end