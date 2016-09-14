class CleansController < ApplicationController
   
  def index
    @cleans = Clean.all
  end
  
  def show
    @clean = Clean.find(params[:id])
  end

  def new
    @clean = Clean.new
  end

  def create
    @clean = Clean.new(clean_params)
    if @clean.save
      flash[:success] = "You've created a new clean"
      redirect_to @clean
      # Handle a successful save.
    else
      render 'new'
    end
  end

  def edit
    @clean = Clean.find(params[:id])
  end
  
  def update
    @clean = Clean.find(params[:id])
    if @clean.update_attributes(clean_params)
      flash[:success] = "Clean updated"
      redirect_to @clean
      # Handle a successful update.
    else
      render 'edit'
    end
  end

  def destroy
    Clean.find(params[:id]).destroy
    flash[:success] = "Clean deleted"
    redirect_to cleans_url
  end

  private

    def clean_params
      params.require(:clean).permit(:date, :kind)
    end
end
