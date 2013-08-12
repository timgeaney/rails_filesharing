class AssetsController < ApplicationController

  def index
    @assets = current_user.assets
    
  end

  def show
    @assets = current_user.assets.find([params[:id]])
    
  end

  def new
    
  end

  def create
    
  end
  def edit
    
  end
  def update
    
  end

  def destroy
    
  end
end
