class VenueInfosController < ApplicationController
  before_action :set_venue_info, only: [:show, :edit, :update, :destroy]

  # GET /venue_infos
  # GET /venue_infos.json
  def index
    @venue_infos = VenueInfo.all
  end

  # GET /venue_infos/1
  # GET /venue_infos/1.json
  def show
  end

  # GET /venue_infos/new
  def new
    @venue_info = VenueInfo.new
  end

  # GET /venue_infos/1/edit
  def edit
  end

  # POST /venue_infos
  # POST /venue_infos.json
  def create
    @venue_info = VenueInfo.new(venue_info_params)

    respond_to do |format|
      if @venue_info.save
        format.html { redirect_to @venue_info, notice: 'Venue info was successfully created.' }
        format.json { render action: 'show', status: :created, location: @venue_info }
      else
        format.html { render action: 'new' }
        format.json { render json: @venue_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /venue_infos/1
  # PATCH/PUT /venue_infos/1.json
  def update
    respond_to do |format|
      if @venue_info.update(venue_info_params)
        format.html { redirect_to @venue_info, notice: 'Venue info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @venue_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /venue_infos/1
  # DELETE /venue_infos/1.json
  def destroy
    @venue_info.destroy
    respond_to do |format|
      format.html { redirect_to venue_infos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_venue_info
      @venue_info = VenueInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def venue_info_params
      params.require(:venue_info).permit(:name, :description, :picture)
    end
end
