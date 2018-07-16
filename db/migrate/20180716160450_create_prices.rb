class CreatePrices < ActiveRecord::Migration[5.2]
  def change
    create_table :prices do |t|
      t.integer :nombre
      t.integer :unite
      t.references :fairepart, foreign_key: true

      t.timestamps
    end
  end
end
