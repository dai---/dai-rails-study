class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :value
      t.references :item_group, index: true

      t.timestamps null: false
    end
    add_foreign_key :items, :item_groups
  end
end
