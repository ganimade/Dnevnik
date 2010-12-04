class CreateCities < ActiveRecord::Migration
  def self.up
    create_table :cities do |t|
      t.references :country

      t.string :title
      t.string :phone_code
    end
    add_index :cities, :title
  end

  def self.down
    drop_table :cities
  end
end
