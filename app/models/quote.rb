class Quote < ApplicationRecord
  belongs_to :character
  validates :saying, presence: true
end
