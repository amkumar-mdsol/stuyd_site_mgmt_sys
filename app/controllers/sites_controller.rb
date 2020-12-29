class SitesController < ApplicationController

  def index
    @sites = Site.all
  end

  def new
    @site ||= Site.new
  end

  def edit
  end

  def show
  end

  def create
    @site = Site.new(permit_params)
    if @site.save
      redirect_to sites_path
    else
      render :new
    end

  end

  def update
  end

  def destroy
  end

  def all_sites
    render json: Site.all
  end

  private

  def permit_params
    params.require(:site).permit(:name, :site_uuid, :location, :phone,
      :email, :study_uuid, :address_line_1, :address_line_2, :state, :city, :country)
  end
end
