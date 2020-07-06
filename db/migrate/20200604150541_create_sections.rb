class CreateSections < ActiveRecord::Migration[6.0]
  def change
    create_table :sections do |t|

      #add_foreign_key :sections, :pages
      t.references :page

      t.string "name"

      t.integer "position"

      t.boolean "visible", :default => false

      t.string "contenttype"
      # Example: t.column "first_name", :string

      t.text "content"
      # Example: t.column "first_name", :string      

      t.timestamps
    end
  end
end
