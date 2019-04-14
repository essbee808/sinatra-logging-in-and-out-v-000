class Users < ActiveRecord::Migration[5.1]
  def self.up
     create_table :users do |t|
      t.string :username
      t.string :password 
      t.decimal :balance
    end
    
  def self.down
    drop_table :users
  end
  end
end
