class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :avatar
  has_many :likes, dependent: :destroy
  has_many :like_recipes, through: :likes, source: :recipe
  has_many :hards, dependent: :destroy
  has_many :hard_recipes, through: :likes, source: :recipe
end
