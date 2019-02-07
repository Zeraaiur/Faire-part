class CreateReponses < ActiveRecord::Migration[5.2]
  def change
    create_table :reponses do |t|
      t.string :slug
      t.string :nom
      t.boolean :couleur
      t.string :format
      t.boolean :verso
      t.string :image

      t.timestamps
    end
  end
end
