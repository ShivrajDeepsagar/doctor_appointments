class DoctorAppointmentsController < ApplicationController
  before_action :set_doctor_appointment, only: [:show, :update, :destroy]

  # GET /doctor_appointments
  def index
    @doctor_appointments = DoctorAppointment.all

    render json: @doctor_appointments
  end

  # GET /doctor_appointments/1
  def show
    render json: @doctor_appointment
  end

  # POST /doctor_appointments
  def create
    @doctor_appointment = DoctorAppointment.new(doctor_appointment_params)

    if @doctor_appointment.save
      render json: @doctor_appointment, status: :created, location: @doctor_appointment
    else
      render json: @doctor_appointment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /doctor_appointments/1
  def update
    if @doctor_appointment.update(doctor_appointment_params)
      render json: @doctor_appointment
    else
      render json: @doctor_appointment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /doctor_appointments/1
  def destroy
    @doctor_appointment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doctor_appointment
      @doctor_appointment = DoctorAppointment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def doctor_appointment_params
      params.require(:doctor_appointment).permit(:description, :from, :to, :doctor_id, :user_id)
    end
end
