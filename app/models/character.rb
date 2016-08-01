class Character < ApplicationRecord
  belongs_to :house
  has_many :quotes, dependent: :destroy
  validates :name, presence: true
end
