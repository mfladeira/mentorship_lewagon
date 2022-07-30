class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def show_mentors_by_specialty
    speacilty = params[:specialty]
    @services = Service.where(specialty: speacilty)
  end
end
