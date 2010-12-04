class CreateSubjects < ActiveRecord::Migration
  def self.up
    create_table :subjects do |t|
      t.references :country
      t.string :title

      t.timestamps
    end
    add_index :subjects, "country_id"
  end

  def self.down
    drop_table :subjects
  end
end
