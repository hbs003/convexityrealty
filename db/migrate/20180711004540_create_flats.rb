class CreateFlats < ActiveRecord::Migration[5.2]
  def change
    create_table :flats do |t|
      t.string :name
      t.string :description
      t.string :address
      t.integer :price
      t.string :title
      t.float :area
      t.references :user

      t.timestamps
    end
  end
end
