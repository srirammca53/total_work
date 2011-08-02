class CreateRegisters < ActiveRecord::Migration
  def self.up
    create_table :registers do |t|
      t.string :empname
      t.integer :empage
      t.integer :empsalary
      t.string :empdepartment

      t.timestamps
    end
  end

  def self.down
    drop_table :registers
  end
end
