class Api::V1::StartupsController < ApplicationController

  def index
    @startups = Startup.all
  end

  def show
    @startup = Startup.find(params[:id])
    render json: @startup 
  end

  def create
    @startup = Startup.new(name: params[:name], location: params[:location], job_openings: params[:job_openings])
    if @startup.save
      render json: @startup
    else 
    render json: {errors: @startup.errors.full_messages}, status: 422
    end
  end

  def update
    @startup = Startup.find(params[:id])
    @startup.update(name: params[:name],location: params[:location], job_openings: params[:job_openings])
    redirect_to "/startups/#{@startup.id}"
    flash[:success] = "Updated!"
  end

  def destroy
    @startup = Startup.find(params[:id]).destroy
    # respond_to do |format|
      # format.html {redirect_to "/startups"}
      render json: "Startup deleted."
    # end
    # startup.delete
    # redirect_to "/startups"
    # flash[:danger] = "Destroyed!"
  end

end
