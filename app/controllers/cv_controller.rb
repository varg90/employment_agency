class CvController < ApplicationController
  def new
    @cv = Cv.new
  end

  def index
    @cvs = Cv.all.page params[:page]
  end

  def show
    @cv = Cv.find params[:id]
  end

  def suitable_for_vacancy id
  end
end
