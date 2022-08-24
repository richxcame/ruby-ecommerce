class Product < ApplicationRecord
  include Visible

  belongs_to :category
  
  validates :title_tk, presence: true
  validates :title_en, presence: true
  validates :title_ru, presence: true
end
