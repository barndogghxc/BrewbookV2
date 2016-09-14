class MaltsController < ApplicationController

  def index
    @malts = Malt.all
  end
  
  def show
    @malt = Malt.find(params[:id])
  end

  def new
    @malt = Malt.new
  end

  def create
    @malt = Malt.new(malt_params)
    if @malt.save
      flash[:success] = "You've created a new malt"
      redirect_to @malt
      # Handle a successful save.
    else
      render 'new'
    end
  end

  def edit
    @malt = Malt.find(params[:id])
  end
  
  def update
    @malt = Malt.find(params[:id])
    if @malt.update_attributes(malt_params)
      flash[:success] = "Malt updated"
      redirect_to @malt
      # Handle a successful update.
    else
      render 'edit'
    end
  end

  def destroy
    Malt.find(params[:id]).destroy
    flash[:success] = "Malt deleted"
    redirect_to malts_url
  end

  private

    def malt_params
      params.require(:malt).permit(:kind, :amount)
    end
end

