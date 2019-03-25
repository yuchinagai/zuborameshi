class Hard < ApplicationRecord
  belongs_to :recipe, counter_cache: :hards_count
  belongs_to :user
end
