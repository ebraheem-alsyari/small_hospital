class CreateDoctorNames < ActiveRecord::Migration[6.1]
  def change
    create_table :doctor_names do |t|
      t.string "dr-name"
      t.string "majore"
      t.timestamps
    end
  end
end
