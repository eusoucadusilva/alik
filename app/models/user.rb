class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username,:phone,:avatar_url,:email, :password, :password_confirmation, :remember_me,
  :username,:city_id,:fields,:portifolio_of_oab,:phone,:about,:teaching,           
  :professional,:books_published,:articles_published,:postgraduate,:doctorate_in_law,
  :master_of_law, :postgraduate_in_law, :foreign_laguage,:terms_of_use

end
