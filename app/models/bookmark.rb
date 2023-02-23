class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie
  validates :comment, length: {minimum: 6}
  validates :movie_id, presence: true
  validates :list_id, presence: true
  validates :movie_id, uniqueness: { scope: :list_id }
  #validation with the scope option to ensure that the combination of movie_id and list_id is unique
end
