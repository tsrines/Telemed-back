class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.string :api_id
      t.string :first_name
      t.string :last_name
      t.string :title
      t.string :address
      t.string :gender
      t.string :bio
      t.string :phone_number

      t.timestamps
    end
  end
end
