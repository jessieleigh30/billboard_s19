class ChartsController < ApplicationController
  before_action :set_chart, only: [:show, :destroy]

  def index
    @charts = Chart.all
  end

  def show
  end

  def new
    @chart = Chart.new
  end

  def create
    @chart = Chart,new(chart_params)
    if @chart.save
      redirect_to @chart
    else
      render :new
    end
  end

  def destroy
     @chart.destroy
    redirect_to chart_path
  end

  private

  def set_chart
    @chart = Chart.find(params[:id])
  end

  def chart_params
    params.require(:chart).permit(:name)
  end
end
