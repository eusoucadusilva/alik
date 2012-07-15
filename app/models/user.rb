# -*- encoding : utf-8 -*-
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


  #validates :terms, :acceptance => { allow_nil: false, accept: true, on: :update }


  belongs_to :city
  has_many :questions, dependent: :destroy

  after_initialize :set_defaults


    def human_alik_rate
      rate = alik_rate/3
      if rate >= 8
        "Excelente"
      elsif rate >= 6
        "Ótimo"
      elsif rate >= 4
        "Muito bom"
      elsif rate >= 2
        "Bom"
      else
        "Regular"
      end
    end

    def alik_rate
      value = 0
      value += teaching * 0.5
      value += professional * 2
      value += books_published * 0.5
      value += articles_published * 0.25
      value += 4 if doctorate_in_law?
      value += 4 if postgraduate_in_law?
      value += 4 if master_of_law?
      value += 4 if postgraduate?
      value += 1 if foreign_laguage?
      value
    end

    private
    def set_defaults
      self.teaching ||= 0
      self.professional ||= 0
      self.books_published ||= 0
      self.articles_published ||= 0
    end


end
