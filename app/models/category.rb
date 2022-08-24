class Category < ApplicationRecord
  has_many :products

  validates :title_tk, presence: true
  validates :title_en, presence: true
  validates :title_ru, presence: true
end
