class CreateDoctorAoointments < ActiveRecord::Migration[6.0]
  def change
    create_table :doctor_aoointments do |t|
      t.text :description
      t.datetime :from
      t.datetime :to
      t.references :doctor, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
