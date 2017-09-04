class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.references :site, foreign_key: true
      t.string :title
      t.text :introduction
      t.integer :price
      t.string :image
      t.boolean :release_status

      t.timestamps
    end
  end
end
