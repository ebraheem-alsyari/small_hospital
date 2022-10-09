class CreateDetails < ActiveRecord::Migration[6.1]
  def up
    create_table :details do |t|
      t.string "name"
      t.integer "age"
      t.text "description"
      t.integer "phone_number"
      t.timestamps
    end
  end

  def down
    drop_table :details
  end
end
