class CreateRents < ActiveRecord::Migration[5.1]
  def change
    create_table :rents do |t|
      t.integer :reservation_id
      t.integer :room_id
      t.decimal :amount

      t.timestamps
    end
  end
end
