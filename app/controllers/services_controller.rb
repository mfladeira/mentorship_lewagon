class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def show_mentors_by_specialty
    @speacilty = params[:specialty]
    @services = Service.where('user_id != ? and specialty = ?', current_user.id, @speacilty)
  end

  def show
    @service = Service.find(params[:id])
  end

  def show_service_of_user
    @service = Service.where('user_id = ?', current_user.id).first
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(services_params)
    @service.user = current_user
    @service.save


    redirect_to root_path
  end

  private

  def services_params
    params.require(:service).permit(:description, :specialty, :price)
  end
end
