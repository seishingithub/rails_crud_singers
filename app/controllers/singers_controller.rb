class SingersController < ApplicationController

  def index
    @singer = Singer.new
    @singers = Singer.all
  end

  def create
    @singer = Singer.create(singer_params)
    if @singer.save
      redirect_to singers_path
    else
      render :index
    end
  end

  def show
    @singer = singer.find(params[:id])
  end

private

def singer_params
  params.require(:singer).permit(:name, :song)
end

end