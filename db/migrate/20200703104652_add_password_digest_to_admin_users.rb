class AddPasswordDigestToAdminUsers < ActiveRecord::Migration[6.0]
  def change

    remove_column :admin_users, :hashed_pasword, :string

    add_column :admin_users, :password_digest, :string

  end
end
