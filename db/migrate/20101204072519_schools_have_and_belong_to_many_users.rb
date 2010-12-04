class SchoolsHaveAndBelongToManyUsers < ActiveRecord::Migration
  def self.up
    create_table :schools_users, :id => false do |t|
      t.references :school, :user
    end
  end

  def self.down
    drop_table :schools_users
  end
end
