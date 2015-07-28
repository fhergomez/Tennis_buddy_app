class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :level
      t.string :gender
      t.string :neighborhood
      t.integer :age
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
