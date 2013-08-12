class AssetsController < ApplicationController

  def index
    @assets = current_user.assets
  end

  def show
    @assets = current_user.assets.find([params[:id]])
  end

  def new
    @asset = current_user.assets.new
  end

  def create
    @asset = current_user.assets.new(params[:asset])
    if @asset.save
      flash[:sucess]= "New Trip created"
      redirect_to assets_path
    else
      render root_url
    end
  end

  def edit
    @assets = current_user.assets.find([params[:id]])
  end

  def update
    @assets = current_user.assets.find([params[:id]])
    if @asset.update_atributes(params[:asset])
      flash[:sucess] = "Profile Updated"
      redirect_to @asset
    else
      render 'edit'
    end
  end

  def destroy
    @assets = current_user.assets.find([params[:id]])
  end 
end
