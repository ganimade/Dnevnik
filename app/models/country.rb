class Country < ActiveRecord::Base
  has_many :cities
  has_many :jobs
  has_many :subjects
end
