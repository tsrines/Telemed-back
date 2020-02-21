class CreateDoctorAilments < ActiveRecord::Migration[6.0]
  def change
    create_table :doctor_ailments do |t|
      t.integer :doctor_id
      t.integer :ailment_id
      t.timestamps
    end
  end
end
