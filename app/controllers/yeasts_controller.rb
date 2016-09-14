class YeastsController < ApplicationController
  
  def index
    @yeasts = Yeast.all
  end
  
  def show
    @yeast = Yeast.find(params[:id])
  end

  def new
    @yeast = Yeast.new
  end

  def create
    @yeast = Yeast.new(yeast_params)
    if @yeast.save
      flash[:success] = "You've created a new yeast"
      redirect_to @yeast
      # Handle a successful save.
    else
      render 'new'
    end
  end

  def edit
    @yeast = Yeast.find(params[:id])
  end
  
  def update
    @yeast = Yeast.find(params[:id])
    if @yeast.update_attributes(yeast_params)
      flash[:success] = "Yeast updated"
      redirect_to @yeast
      # Handle a successful update.
    else
      render 'edit'
    end
  end

  def destroy
    Yeast.find(params[:id]).destroy
    flash[:success] = "Yeast deleted"
    redirect_to yeasts_url
  end

  private

    def yeast_params
      params.require(:yeast).permit(:kind, :amount)
    end
end
