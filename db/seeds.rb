# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
sa = Role.create(:name => "SuperAdmin")
sau = User.Create(:email => "admin@test.com", :mobile => "79084418833", :password => "123123")
sau.roles << sa
sau = User.Create(:email => "admin2@test.com", :mobile => "79504441666", :password => "123123")
sau.roles << sa
op = Role.create(:name => "Operator")
opu =User.Create(:email => "operator@test.com", :mobile => "79001112233", :password => "123123")
opu.roles << op
