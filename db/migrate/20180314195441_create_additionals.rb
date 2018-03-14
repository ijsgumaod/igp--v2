class CreateAdditionals < ActiveRecord::Migration[5.1]
  def change
    create_table :additionals do |t|
      t.string :name
      t.text :description
      t.decimal :amount

      t.timestamps
    end
  end
end
