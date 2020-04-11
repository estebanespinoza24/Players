class Player < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50, minimum: 2}
  validates :team, presence: true, length: {maximum: 50, minimum: 2}
end
