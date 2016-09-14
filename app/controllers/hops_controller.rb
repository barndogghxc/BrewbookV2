class HopsController < ApplicationController
 
  def index
    @hops = Hop.all
  end
  
  def show
    @hop = Hop.find(params[:id])
  end

  def new
    @hop = Hop.new
  end

  def create
    @hop = Hop.new(hop_params)
    if @hop.save
      flash[:success] = "You've created a new hop"
      redirect_to @hop
      # Handle a successful save.
    else
      render 'new'
    end
  end

  def edit
    @hop = Hop.find(params[:id])
  end
  
  def update
    @hop = Hop.find(params[:id])
    if @hop.update_attributes(hop_params)
      flash[:success] = "Hop updated"
      redirect_to @hop
      # Handle a successful update.
    else
      render 'edit'
    end
  end

  def destroy
    Hop.find(params[:id]).destroy
    flash[:success] = "Hop deleted"
    redirect_to hops_url
  end

  private

    def hop_params
      params.require(:hop).permit(:kind, :amount)
    end
end
