class CreatePurchases < ActiveRecord::Migration[5.1]
  def change
    create_table :purchases do |t|
      t.references :user, foreign_key: true
      t.references :ticket, foreign_key: true
      t.time :time

      t.timestamps
    end
  end
end
