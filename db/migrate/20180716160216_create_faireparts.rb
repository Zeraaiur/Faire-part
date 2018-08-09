class CreateFaireparts < ActiveRecord::Migration[5.2]
  def change
    create_table :faireparts do |t|
      t.string :slug
      t.string :nom
      t.boolean :couleur
      t.boolean :pliant
      t.string :format
      t.boolean :verso
      t.string :image

      t.timestamps
    end
  end
end
