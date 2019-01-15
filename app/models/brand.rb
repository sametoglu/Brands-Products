class Brand < ApplicationRecord

  has_many :products, dependent: :destroy
  validates :name, presence: true,
                    length: { maximum: 20 }
  validates :headquarters, presence: true,
                    length: { maximum: 20 }
  validates :phone, presence: true,
                    length: { minimum: 11 , maximum: 20}
  validates :phone, numericality: { only_integer: true }
end
