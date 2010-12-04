class School < ActiveRecord::Base
  belongs_to :city
  has_and_belongs_to_many :editors, :class_name => "User"
end
