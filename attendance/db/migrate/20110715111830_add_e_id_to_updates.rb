class AddEIdToUpdates < ActiveRecord::Migration
  def self.up
    add_column :updates, :e_id, :integer
  end

  def self.down
    remove_column :updates, :e_id
  end
end
