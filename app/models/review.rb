class Review < ApplicationRecord
  belongs_to :book
  validates :content, presence: true
end
