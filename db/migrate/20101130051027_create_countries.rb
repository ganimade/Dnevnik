class CreateCountries < ActiveRecord::Migration
  def self.up
    create_table :countries do |t|
      t.string :title
    end
    add_index :countries, :title, :unique => true
  end

  def self.down
    drop_table :countries
  end
end
