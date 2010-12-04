class CreateJobs < ActiveRecord::Migration
  def self.up
    create_table :jobs do |t|
      t.references :country
      t.string :title
    end
  end

  def self.down
    drop_table :jobs
  end
end
