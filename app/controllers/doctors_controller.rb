class DoctorsController < ApplicationController

  def index
    doctors = Doctor.all
    render json: doctors
  end

  def create  
    doctor = Doctor.find_or_create_by(doctor_params)

    render json: doctor
  end

  def new
    
  end

  def show
    doctor = Doctor.find(params[:id])
    
    render json: doctor
  end 

  private
  def doctor_params
    params.require(:doctor).permit(:api_id, :first_name, :last_name, :title, :address, :gender, :bio, :phone_number)
  end


end
