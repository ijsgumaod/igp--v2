class CreateGuests < ActiveRecord::Migration[5.1]
  def change
    create_table :guests do |t|
      t.string :first_name
      t.string :last_name
      t.string :contact_number
      t.string :email

      t.timestamps
    end
  end
end
