class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.integer :api_id
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :specialty

      t.timestamps
    end
  end
end
