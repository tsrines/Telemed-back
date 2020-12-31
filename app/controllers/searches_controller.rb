class SearchesController < ApplicationController
  def index
    render json: Search.all
  end

  def create
    search = Search.create(search_params)
    render json: search
  end

  def show
    search = Search.find_by(id: params[:id])
    doctors = []
    search.csv.split(',').each { |id| doctors.push(Doctor.find(id)) }
    render json: doctors
  end

  private

  def search_params
    params.require(:search).permit(:id, :user_id, :csv)
  end
end
