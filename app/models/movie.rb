class Movie < ApplicationRecord
  has_many :comments, dependent: :destroy


def alphabetize
  
  Movie.order('title ASC')
  end
end