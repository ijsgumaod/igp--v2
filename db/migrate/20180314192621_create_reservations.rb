class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.integer :guest_id
      t.datetime :reserve_date_from
      t.datetime :reserve_date_to

      t.timestamps
    end
  end
end
