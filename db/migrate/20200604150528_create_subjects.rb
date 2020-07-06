class CreateSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :subjects do |t|

      t.string "name"

      t.integer "position"

      t.boolean "visible", :default => false
      #Ex:- :default =>''
      # Example: t.column "first_name", :string

      t.timestamps
    end
  end
end
