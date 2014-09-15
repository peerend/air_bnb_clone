class SpacesController < ApplicationController

  def index
    @spaces = Space.all
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    if @space.save
      flash[:notice] = "Space created"
      redirect_to root_url
    else
      flash[:alert] = "Space failed to create"
      render "new"
    end
  end

  def edit
    @space = Space.find(params[:id])
    render 'show'
  end

  def update
    @space = Space.find(params[:id])

    if @space.update(space_params)
      flash[:notice] = "Space updated"
      redirect_to root_url
    else
      flash[:alert] = "Space failed to update"
      render 'show'
    end
  end

  def destroy
    @space = Space.destroy(params[:id])
  end

private

  def space_params
    params.require(:space).permit(:user_id, :address, :day_fee, :description)
  end

end
