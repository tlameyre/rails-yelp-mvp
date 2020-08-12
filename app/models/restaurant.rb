class Restaurant < ApplicationRecord
  CATEGORIES = ['🇨🇳 chinese', '🇮🇹 italian', '🇫🇷 french', '🇯🇵 japanese', '🇧🇪 belgian']
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
