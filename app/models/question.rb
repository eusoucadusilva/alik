class Question < ActiveRecord::Base
  attr_accessible :title, :description, :requester_name, :requester_email, 
                  :requester_phone_area_code, :requester_phone_number

  validates_presence_of :title, :description, :requester_name, :requester_email,
                        :requester_phone_area_code, :requester_phone_number
end
