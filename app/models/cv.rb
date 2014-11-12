class Cv < ActiveRecord::Base
  validates :full_name, presence: true, format: {with: /[а-яА-Я]+\s+[а-яА-Я]+\s+[а-яА-Я]+/}
  validates :contacts, presence: true, format: {
      with: /(8|\+7)?([ .-]?)\(?([0-9]{3})\)?([ .-]?)([0-9]{3})\2([0-9]{4})|(\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z)/i
  }
  validates :salary, numericality: {greater_than_or_equal_to: 0}
end
