class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.text :description
      t.decimal :rate
      t.boolean :isReserved
      t.integer :guest_per_room
      t.string :room_type

      t.timestamps
    end
  end
end
