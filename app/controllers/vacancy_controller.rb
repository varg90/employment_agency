class VacancyController < ApplicationController
  def new
    @vacancy = Vacancy.new
  end

  def index
    @cvs = Vacancy.all.page params[:page]
  end

  def show
    @cv = Vacancy.find params[:id]
  end

  def suitable_for_cv
  end
end
