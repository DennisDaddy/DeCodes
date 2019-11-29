class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def index
    @category = Category.all
  end

  def create
    @category = Category.new(category_params)
    if @category.save     
      flash[:success] = "Successfuly created!"
      redirect_to categories_path
    else
      flash[:danger] = "Failed or login as admin to continue!"
      redirect_to new_category_path
    end    
  end

  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(category_params)
      flash[:success] = "Successfuly updated!"    
    redirect_to categories_path
    else
      render 'edit'
    end
  end

  def edit
  end

  def show
    @category = Category.find(params[:id])
  end
  
  def destroy
    Category.find(params[:id]).destroy
    flash[:success] = "Category deleted!"
    redirect_to categories_url
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
