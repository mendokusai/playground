class Equipment < ActiveRecord::Base
  has_many :park_equipments
  has_many :parks, through: :park_equipments

  validates_presence_of :name, :age_range
  validates :description, length: { minimum: 5 }
end
