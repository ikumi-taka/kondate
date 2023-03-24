class Recipe < ApplicationRecord
  belongs_to :user, optional: true
  validates :recipe_name, presence: true
  validates :genre, presence: true
  validates :food, presence: true
  validates :quantity, presence: true
  validates :content, presence: true
end
