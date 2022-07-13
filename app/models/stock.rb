class Stock < ApplicationRecord
  validates :area,       presence: true
  validates :store_name, presence: true
  validates :product,    presence: true
  validates :lottery,    presence: true
  validates :comment,    presence: true

  belongs_to :user
end
