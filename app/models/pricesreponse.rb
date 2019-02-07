class Pricesreponse < ApplicationRecord
  belongs_to :reponse
  validates :nombre, numericality: { only_integer: true }
  validates :unite, presence: true
  validates :reponse_id, presence: true
end
