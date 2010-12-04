class AddCityToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :city_id, :integer, :null => true
    add_index :users, :city_id
  end

  def self.down
    remove_index :users, :city_id
    remove_column :users, :city_id
  end
end

