class BreadsController < ApplicationController
  before_action :set_bread, only: [:show, :edit, :update, :destroy]

  def index
    @breads = Bread.all 
  end


end
