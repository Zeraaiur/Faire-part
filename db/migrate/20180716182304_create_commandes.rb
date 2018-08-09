class CreateCommandes < ActiveRecord::Migration[5.2]
  def change
    create_table :commandes do |t|
      t.string :nom
      t.references :fairepart, foreign_key: true
      t.integer :nombre

      t.timestamps
    end
  end
end
