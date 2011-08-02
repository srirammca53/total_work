class CreateEmpDetail < ActiveRecord::Migration
  def self.up
    create_table :emp_detail do |t|
      t.integer :emp_id
      t.string :emp_name
      t.string :emp_department

      t.timestamps
    end
  end

  def self.down
    drop_table :emp_detail
  end
end
