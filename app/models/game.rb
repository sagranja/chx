class Game < ApplicationRecord
  has_many :pieces
  has_many :users
  has_many :comments
end
