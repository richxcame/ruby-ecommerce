class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title_tk
      t.string :title_en
      t.string :title_ru
      t.string :description_tk
      t.string :description_en
      t.string :description_ru
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
