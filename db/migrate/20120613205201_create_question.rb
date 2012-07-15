class CreateQuestion < ActiveRecord::Migration
  def up
    create_table :questions do |t|
      t.string  :title,                     :null => false
      t.text    :description,               :null => false
      t.string  :requester_name,            :null => false
      t.string  :requester_email,           :null => false
      t.string  :requester_phone_area_code, :null => false, :limit => 2
      t.string  :requester_phone_number,    :null => false, :limit => 8
      
      t.timestamps
    end
  end

  def down
    drop_table :questions
  end
end
