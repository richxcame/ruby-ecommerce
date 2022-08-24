class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :title_tk
      t.string :title_en
      t.string :title_ru

      t.timestamps
    end
  end
end
