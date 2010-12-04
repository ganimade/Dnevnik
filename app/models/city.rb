class City < ActiveRecord::Base
  belongs_to :country
  has_many :users
  has_many :schools
end
