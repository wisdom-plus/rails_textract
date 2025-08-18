class CreateReceipts < ActiveRecord::Migration[8.0]
  def change
    create_table :receipts do |t|
      t.integer :status, null: false, default: 0
      t.string :store_name
      t.datetime :purchase_date
      t.integer :total
      t.integer :tax
      t.string :image
      t.json :ocr_json
      t.timestamps
    end
  end
end
