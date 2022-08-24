class Product < ApplicationRecord
  belongs_to :category
  
  validates :title_tk, presence: true
  validates :title_en, presence: true
  validates :title_ru, presence: true

  VALID_STATUSES = ['public', 'private', 'archived']

  validates :status, inclusion: { in: VALID_STATUSES }

  def archived?
    status == 'archived'
  end
end
