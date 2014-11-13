class Vacancy < ActiveRecord::Base
  before_save :default_values

  def default_values
    self.expiration_date ||= 1.month.from_now
  end
end
