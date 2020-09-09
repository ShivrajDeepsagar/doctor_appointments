class ChangeAppointmentColumnNames < ActiveRecord::Migration[6.0]
  def change
    rename_column :doctor_appointments, :from, :apt_from
    rename_column :doctor_appointments, :to, :apt_to
  end
end
