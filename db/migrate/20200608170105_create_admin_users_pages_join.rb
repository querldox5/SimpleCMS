class CreateAdminUsersPagesJoin < ActiveRecord::Migration[6.0]
  def change
    create_table :admin_users_pages do |t|
      t.references :admin_user
      t.references :page
    end

    add_index :admin_users_pages, ["admin_user_id", "page_id"]
    #Ex:- add_index("admin_users", "username")
  end
end