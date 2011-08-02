class CreateUpdates < ActiveRecord::Migration
  def self.up
    create_table :updates do |t|
      t.date :date
      t.string :present
      t.string :late
      t.string :absent
      t.references :post

      t.timestamps
    end
  end

  def self.down
    drop_table :updates
  end
end
