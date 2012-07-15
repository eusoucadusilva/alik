class CreateCities < ActiveRecord::Migration
	def up
		create_table :cities do |t|
	      t.string :name
	      t.string :state

	      t.timestamps
	    end
	end

	def down
		drop_table :cities
	end
end