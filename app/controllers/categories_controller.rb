class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def index
    @category = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end
  
end
