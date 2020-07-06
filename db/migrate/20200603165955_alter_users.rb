class AlterUsers < ActiveRecord::Migration[6.0]
  def change 
    rename_table :users, :admin_users
    
    add_column :admin_users, :username, :string, :limit => 25, :after => "email"
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
    #Ex:- :limit => 40
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)

    rename_column :admin_users, :password,:hashed_pasword
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")

    puts "*** Adding an index is next"
    add_index :admin_users, :username
    #Ex:- add_index("admin_users", "username")
  end

  def up
    change_column :admin_users, :email, :string, :limit => 100 #By default SQL String limit 255 character 
  end

  def down    
    change_column :users, :email, :string, :default => "", :null => false
    #Ex:- :default =>'' => 100 :null => false
    #Ex:- :null => false #By default SQL String limit 255 character 
  end
end