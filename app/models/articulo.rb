class Articulo < ApplicationRecord
  validates :titulo, presence: true , length: { minimum:5 }
end
