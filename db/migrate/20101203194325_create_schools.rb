class CreateSchools < ActiveRecord::Migration
  def self.up
    create_table :schools do |t|
      t.references :city

      t.string :title
      t.string :address

      t.timestamps
    end
    add_index :schools, "city_id"
  end

  def self.down
    drop_table :schools
  end
end
