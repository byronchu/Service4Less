class ServiceDatesController < ApplicationController
  before_action :set_service_date, only: [:show, :edit, :update, :destroy]

  # GET /service_dates
  # GET /service_dates.json
  def index
    @service_dates = ServiceDate.all
  end

  # GET /service_dates/1
  # GET /service_dates/1.json
  def show
  end

  # GET /service_dates/new
  def new
    @service_date = ServiceDate.new
    @service_date.service = Service.find(params[:service])
  end

  # GET /service_dates/1/edit
  def edit
  end

  # POST /service_dates
  # POST /service_dates.json
  def create
    @service_date = ServiceDate.new(service_date_params)
    
    respond_to do |format|
      if @service_date.save
        format.html { redirect_to @service_date, notice: 'Service date was successfully created.' }
        format.json { render :show, status: :created, location: @service_date }
      else
        format.html { render :new }
        format.json { render json: @service_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_dates/1
  # PATCH/PUT /service_dates/1.json
  def update
    respond_to do |format|
      if @service_date.update(service_date_params)
        format.html { redirect_to @service_date, notice: 'Service date was successfully updated.' }
        format.json { render :show, status: :ok, location: @service_date }
      else
        format.html { render :edit }
        format.json { render json: @service_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_dates/1
  # DELETE /service_dates/1.json
  def destroy
    @service_date.destroy
    respond_to do |format|
      format.html { redirect_to service_dates_url, notice: 'Service date was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_date
      @service_date = ServiceDate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_date_params
      params.require(:service_date).permit(:date, :qty_avail, :service_id)
    end
end
