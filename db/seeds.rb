# encoding: UTF-8

Question.delete_all
City.delete_all

	90.times do |i|
	  Question.create(
	    :title                     => "Enganado na compra de um terreno pelo advogado - Question #{i}",
	    :description               => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
	    :requester_name            => "Jose Maria",
	    :requester_email           => "jose@gmail.com",
	    :requester_phone_area_code => "91",
	    :requester_phone_number    => "99999999"
	  )
	end


	if City.count.zero?
	  require 'csv'
	  CSV.foreach(Rails.root.join('db','cities.csv')) do |row|
	    City.create!({
	      :state => row[0],
	      :name => row[1],
	    })
	  end
	end