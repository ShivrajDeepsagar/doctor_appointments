class FixAppointmentModelName < ActiveRecord::Migration[6.0]
  def change
    rename_table :doctor_aoointments, :doctor_appointments
  end
end
