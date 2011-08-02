class CreateEmpDetails < ActiveRecord::Migration
  def self.up
    create_table :emp_details do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :emp_details
  end
end
