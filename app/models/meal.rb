class Meal < ApplicationRecord
  belongs_to :school
  belongs_to :kind
  belongs_to :age
end
