class BreadsController < ApplicationController
  before_action :set_bread, only: [:show, :edit, :update, :destroy]

  def index
    @breads = Bread.all 
  end

  def show; end

  def new
    @bread = Bread.new 
  end

  def create 
    @bread = Bread.new(bread_params)

    if bread.save 
      redirect_to breads_path, notice: "Bread was successfully baked."
    else
      render :new
    end
  end

  def edit; end

  def update 
    if @bread.update(bread_params)
      redirect_to breads_path, notice: "Rebake was successful."
    end
  end

  def destroy
    @bread.destory
    redirect_to breads_path, notice: "Your bread is no more."
  end

  private

  def set_bread
    @bread = Bread.find(params[:id])
  end

  def bread_params
    params.require(:bread).permit(:bread_name, :bread_story, :baker_id)
  end


end
