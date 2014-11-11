class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :full_name
      t.string :contacts
      t.string :status
      t.decimal :salary

      t.timestamps
    end
  end
end
