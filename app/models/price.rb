class Price < ApplicationRecord
  belongs_to :fairepart
  validates :nombre, numericality: { only_integer: true }
  validates :unite, presence: true
  validates :fairepart_id, presence: true
end
