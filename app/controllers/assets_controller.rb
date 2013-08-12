class AssetsController < ApplicationController

  def index
    @assets = current_user.assets
  end

  def show
    @assets = current_user.assets.find([params[:id]])
  end

  def new
    @assets = current_user.assets.new
  end

  def create
    @asset = current_user.assets.new(params[:asset])
  end

  def edit
    @assets = current_user.assets.find([params[:id]])
  end

  def update
    @assets = current_user.assets.find([params[:id]])
  end

  def destroy
    @assets = current_user.assets.find([params[:id]])
  end
  
end
