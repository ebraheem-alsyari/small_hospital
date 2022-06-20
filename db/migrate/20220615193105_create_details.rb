class CreateDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :details do |t|
      t.integer "dtails_id"
      t.string "name"
      t.integer "age"
      t.integer "phone_number"
      t.string "description"
      t.timestamps
    end
  end
end
