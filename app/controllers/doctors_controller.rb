class DoctorsController < ApplicationController

  def index
    doctors = Doctor.all
    render json: doctors
  end

  def create
        
  end

  def new
    
  end


end
