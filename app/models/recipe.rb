class Recipe < ApplicationRecord
  # has_one_attachedはレコードと画像が1対1の関係性を表します。画像が複数ある場合はhas_many_attachedを指定します。has_one_attached [:プロパティ名] ※プロパティ名はimageやavatar等の名前にします。
  has_one_attached :image
  attribute :new_image
  validates :title, presence: true, length: { maximum: 50 }
  validates :material, presence: true, length: { maximum: 1000 }
  validates :body, presence: true, length: { maximum: 1000 }
  validates :point, presence: true, length: { maximum: 100 }

  before_save do
    self.image = new_image if new_image
  end
end
