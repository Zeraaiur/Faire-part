class Fairepart < ApplicationRecord
  has_many :prices, dependent: :delete_all
  validates :format, presence: true
  validates :couleur, inclusion: { in: [ true, false ] }
  validates :pliant, inclusion: { in: [ true, false ] }
  validates :verso, inclusion: { in: [ true, false ] }

  def self.search(format, pliant, couleur, verso)
    where("format LIKE ? and pliant LIKE ? and couleur LIKE ? and verso LIKE ?", format, pliant, couleur, verso)
  end


end
