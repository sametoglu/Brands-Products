  class Product < ApplicationRecord

  

  belongs_to :brand
  validates :name, presence: true,
                    length: { maximum: 20 }
  validates :color, presence: true,
                    length: { maximum: 20 }
  validates :price, presence: true,
                    length: { minimum: 1 , maximum: 7}
  validates :price, numericality: { only_integer: true }

end
