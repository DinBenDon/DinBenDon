class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :name
      t.integer :qunaitiy
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
