class CreateCos < ActiveRecord::Migration
  def change
    create_table :cos do |t|
      t.string :name
      t.integer :status
      t.references :item_group, index: true

      t.timestamps null: false
    end
    add_foreign_key :cos, :item_groups
  end
end
