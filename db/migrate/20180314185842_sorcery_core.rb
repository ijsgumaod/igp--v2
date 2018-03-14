class SorceryCore < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username,            :null => false
      t.string :email
      t.string :name
      t.integer :role
      t.integer :establishment_id
      t.string :crypted_password
      t.string :salt

      t.timestamps                :null => false
    end

    add_index :users, :email, unique: true
  end
end
