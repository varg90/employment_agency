ActiveAdmin.register Vacancy do
  permit_params :name, :expiration_date, :salary, :contacts
end
