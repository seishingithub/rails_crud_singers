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
    @singer = Singer.find(params[:id])
  end

  def edit
    @singer = Singer.find(params[:id])
  end

  def update
    @singer = Singer.find(params[:id])
    @singer.update_attributes!(singer_params)

    redirect_to singers_path
  end

  def destroy
    @singer = Singer.find(params[:id]).delete

    redirect_to singers_path
  end

private

def singer_params
  params.require(:singer).permit(:name, :song)
end

end