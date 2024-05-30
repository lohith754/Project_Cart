class CreateEstores < ActiveRecord::Migration[7.0]
  def change
    create_table :estores do |t|
      t.string :name
      t.float :price
      t.string :brand
      t.string :material

      t.timestamps
    end
  end
end
