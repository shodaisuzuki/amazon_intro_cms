class ProductTag < ApplicationRecord
  belongs_to :tag
  belongs_to :product

  delegate :name, to: :tag
end
