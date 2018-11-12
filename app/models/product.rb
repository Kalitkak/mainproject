class Product < ApplicationRecord
  has_many :orders
  def self.search(search_term)
    Product.where("title LIKE ?", "%#{search_term}%")
  end
end
