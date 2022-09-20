class Product < ApplicationRecord
  validates :title, :description, :image_url, presence: true
  validates :title, length: { minimum: 10,
    message: "title is not a valid size, write minimun 10 characters"  }
  validates :title, uniqueness: true
  validates :image_url, allow_blank: true, format: {
    with: %r{\.(gif|jpg|jpeg|png)\z}i,
    message: 'must be a URL for GIF, JPG, JPEG or PNG image.'
  }
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
end
