class CreateCvs < ActiveRecord::Migration
  def change
    create_table :cvs do |t|
      t.string :full_name
      t.string :contacts
      t.boolean :status, default: false
      t.decimal :salary

      t.timestamps
    end
  end
end
