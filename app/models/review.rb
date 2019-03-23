class Review < ApplicationRecord
  belongs_to :recipe
  belongs_to :user
  # enum evaluation: { 簡単でおいしい: 1, なんとか作れた: 2, 難しいし、不味い: 3}

  validates :evaluation, presence: true
  validates :body, presence: true, length: { maximum: 140 }
  validates_uniqueness_of :recipe_id, scope: :user_id
end
