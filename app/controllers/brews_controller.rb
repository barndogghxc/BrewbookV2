class BrewsController < ApplicationController
  
  def index
    @brews = Brew.all
  end
  
  def show
    @brew = Brew.find(params[:id])
  end

  def new
    @brew = Brew.new
  end

  def create
    @brew = Brew.new(brew_params)
    if @brew.save
      flash[:success] = "You've created a new brew"
      redirect_to @brew
      # Handle a successful save.
    else
      render 'new'
    end
  end

  def edit
    @brew = Brew.find(params[:id])
  end
  
  def update
    @brew = Brew.find(params[:id])
    if @brew.update_attributes(brew_params)
      flash[:success] = "Brew updated"
      redirect_to @brew
      # Handle a successful update.
    else
      render 'edit'
    end
  end

  def destroy
    Brew.find(params[:id]).destroy
    flash[:success] = "Brew deleted"
    redirect_to brews_url
  end

  private

    def brew_params
      params.require(:brew).permit(:date, :kind)
    end
end
