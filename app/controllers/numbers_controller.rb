class NumbersController < ApplicationController
  def index
  end

  def show
    @number = params[:id]
  end
end
