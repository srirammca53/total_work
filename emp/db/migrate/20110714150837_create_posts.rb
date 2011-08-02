class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :emp_name
      t.string :emp_age
      t.string :emp_department

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
