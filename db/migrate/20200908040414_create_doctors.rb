class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.string :firstname
      t.string :lastname
      t.string :city
      t.string :username
      t.string :password
      t.string :primary_practice

      t.timestamps
    end
  end
end
