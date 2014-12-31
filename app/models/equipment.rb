class Equipment < ActiveRecord::Base
  has_many :park_equipments
  has_many :parks, through: :park_equipments
end
