class CreateDocuments < ActiveRecord::Migration
  def self.up
    create_table :documents do |t|
      t.string :password
      t.date :expiry_date
      t.column :file, :binary, :limit => 10.megabyte
      t.timestamps
    end
  end

  def self.down
    drop_table :documents
  end
end
