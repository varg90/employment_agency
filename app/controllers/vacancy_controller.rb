class VacancyController < ApplicationController
  def new
    @vacancy = Vacancy.new
  end

  def create
    @vacancy = Vacancy.new vacancy_params
  end

  def index
    @cvs = Vacancy.all.page params[:page]
  end

  def show
    @cv = Vacancy.find params[:id]
  end

  def suitable_for_cv id
  end

  private
  def vacancy_params
    params.require(:vacancy).permit :name, :expiration_date, :salary, :contacts
  end
end
