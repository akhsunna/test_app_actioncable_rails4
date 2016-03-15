class ApplesController < ApplicationController
  def show
    @apple = Apple.find params[:id]
  end

  def index

  end
end
