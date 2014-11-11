class CreateVacancies < ActiveRecord::Migration
  def change
    create_table :vacancies do |t|
      t.string :name
      t.date :expiration_date
      t.decimal :salary
      t.text :contacts

      t.timestamps
    end
  end
end
