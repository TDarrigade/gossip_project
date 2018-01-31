class GossipsController < ApplicationController
  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(gossip_params)
    @gossip.save
    redirect_to @gossip
  end

  def gossip
  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def edit
    @gossip = gossip.find(params[:id])
  end

  def update
    @gossip = gossip.find(params[:id])
    @gossip.update(gossip_params)

    redirect_to root_path
  end


  def gossip_params
    params.require(:gossip).permit(:anonymous_author, :content)
  end

end
