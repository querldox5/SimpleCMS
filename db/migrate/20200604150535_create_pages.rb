class CreatePages < ActiveRecord::Migration[6.0]
  def change
    create_table :pages do |t|

      #add_foreign_key :subjects, :pages

      t.references :subject

      t.string "name"

      t.string "permalink"

      t.integer "position"

      t.boolean "visible", :default => false      

      t.timestamps
    end

    add_index :pages, :permalink
    #Ex:- add_index("admin_users", "username")
  end
end
