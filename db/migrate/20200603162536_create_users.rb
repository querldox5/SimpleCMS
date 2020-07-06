class CreateUsers < ActiveRecord::Migration[6.0]
  def change 
    create_table :users do |t|
      t.column "first_name", :string, :limit => 25 #By default SQL String limit 255 character 
      #Ex:- :limit => 40
      # Example: t.column "first_name", :string
      
      t.string "last_name", :limit => 50
      t.string "email", :default => "", :null => false
      #Ex:- :null => false
      
      t.string "password", :limit => 40
      #t.datetime ${"created_at"}
      #${"updated_at"}
      
      t.timestamps
    end
  end
end