class StatisticsController < ApplicationController
  before_action :load_country
  before_action :set_statistic, only: [:show, :edit, :update, :destroy]

  # GET /statistics
  # GET /statistics.json
  def index
    @statistics = @country.statistics
  end

  # GET /statistics/1
  # GET /statistics/1.json
  def show
  end

  # GET /statistics/new
  def new
    @statistic = @country.statistics.build
  end

  # GET /statistics/1/edit
  def edit
  end

  # POST /statistics
  # POST /statistics.json
  def create
    @statistic = @country.statistics.build(statistic_params)

    respond_to do |format|
      if @statistic.save
        format.html { redirect_to [@country, @statistic], notice: 'Statistic was successfully created.' }
        format.json { render action: 'show', status: :created, location: @statistic }
      else
        format.html { render action: 'new' }
        format.json { render json: @statistic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /statistics/1
  # PATCH/PUT /statistics/1.json
  def update
    respond_to do |format|
      if @statistic.update_attributes(statistic_params)
        format.html { redirect_to [@country, @statistic], notice: 'Statistic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @statistic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /statistics/1
  # DELETE /statistics/1.json
  def destroy
    @statistic.destroy
    respond_to do |format|
      format.html { redirect_to country_statistics_url(@country) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_statistic
      @statistic = @country.statistics.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def statistic_params
      params.require(:statistic).permit(:youth_unemployment, :property_rights, :fiscal_freedom, :monetary_freedom, :freedom_from_corruption)
    end
  def load_country
    @country = Country.find(params[:country_id])
  end
end
