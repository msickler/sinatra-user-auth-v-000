class User < ActiveRecord::Base
  validates_presence_of :name, :email, :password

  def change 
    create_table :users do |u|
      u.string :name 
      u.string :email 
      u.string :password      
    end
end