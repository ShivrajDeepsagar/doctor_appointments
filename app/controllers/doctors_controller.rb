class DoctorsController < ApplicationController
  before_action :set_doctor, only: [:show, :update, :destroy, :get_my_appointments_today]

  # GET /doctors
  def index
    @doctors = Doctor.all

    render json: @doctors
  end

  # GET /doctors/1
  def show
    render json: @doctor
  end

  def get_my_appointments_today
    todays_appointments = @doctor.doctor_appointments.where('apt_from >=?',
      Time.zone.now.beginning_of_day)
    render json: todays_appointments
  end

  # POST /doctors
  def create
    @doctor = Doctor.new(doctor_params)

    if @doctor.save
      render json: @doctor, status: :created, location: @doctor
    else
      render json: @doctor.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /doctors/1
  def update
    if @doctor.update(doctor_params)
      render json: @doctor
    else
      render json: @doctor.errors, status: :unprocessable_entity
    end
  end

  # DELETE /doctors/1
  def destroy
    @doctor.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doctor
      @doctor = Doctor.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def doctor_params
      params.require(:doctor).permit(:firstname, :lastname, :city, :username, :password, :primary_practice)
    end
end
