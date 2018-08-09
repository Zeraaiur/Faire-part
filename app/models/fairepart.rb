class Fairepart < ApplicationRecord
  has_many :prices


  def self.search(format, pliant, couleur, verso)
    where("format LIKE ? and pliant LIKE ? and couleur LIKE ? and verso LIKE ?", format, pliant, couleur, verso)
  end


end
