class Movie < ApplicationRecord
  has_many :comments, through: :users
end
