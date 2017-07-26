class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.decimal :price
      t.references :menu, index: true

      t.timestamps null: false
    end
    add_foreign_key :items, :menus
  end
end
