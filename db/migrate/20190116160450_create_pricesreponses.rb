class CreatePricesreponses < ActiveRecord::Migration[5.2]
  def change
    create_table :pricesreponses do |t|
      t.integer :nombre
      t.float :unite
      t.references :reponse, foreign_key: true

      t.timestamps
    end
  end
end
