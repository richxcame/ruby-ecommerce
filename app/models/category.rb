class Category < ApplicationRecord
  include Visible

  has_many :products, dependent: :destroy
  
  validates :title_tk, presence: true
  validates :title_en, presence: true
  validates :title_ru, presence: true
end
