class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      ## Database authenticatable
      t.string :email,              :null => false, :default => ""
      t.string :encrypted_password, :null => false, :default => ""

      ## Personal data
      t.string :username             #Nome
      t.integer :city_id             #cidade
      t.string  :fields              #area de atuação
      t.string  :portifolio_of_oab   #carteira da OAB
      t.string  :phone               #telefone
      t.text    :about               #sobre min

      t.string   :avatar_url
      t.integer  :teaching,               :default => 0     #magistério
      t.integer  :professional,           :default => 0     #profissional
      t.integer  :books_published,        :default => 0     #livros publicados
      t.integer  :articles_published,     :default => 0     #artigos publicados

      t.boolean :postgraduate        #pós-graduado
      t.boolean :doctorate_in_law    #doutorado em direito
      t.boolean :master_of_law       #mestrado em direito
      t.boolean :postgraduate_in_law #pós-graduado em direito
      t.boolean :foreign_laguage     #língua estrangeira
      t.boolean :terms_of_use        #termos de uso

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, :default => 0
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip



      ## Encryptable
      # t.string :password_salt

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, :default => 0 # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      ## Token authenticatable
      # t.string :authentication_token


      t.timestamps
    end

    add_index :users, :email,                :unique => true
    add_index :users, :reset_password_token, :unique => true
    # add_index :users, :confirmation_token,   :unique => true
    # add_index :users, :unlock_token,         :unique => true
    # add_index :users, :authentication_token, :unique => true
  end
end
