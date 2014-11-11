class Employee < ActiveRecord::Base
  validates :full_name, presence: true, format: {with: /[а-яА-Я]+\s+[а-яА-Я]+\s+[а-яА-Я]+/}
end
