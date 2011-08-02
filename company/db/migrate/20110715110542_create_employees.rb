class CreateEmployees < ActiveRecord::Migration
  def self.up
    create_table :employees do |t|
      t.string :emp_name
      t.string :emp_department

      t.timestamps
    end
  end

  def self.down
    drop_table :employees
  end
end
