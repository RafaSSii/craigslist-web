class CreateListings < ActiveRecord::Migration[8.1]
  def change
    create_table :listings do |t|
      t.string :name
      t.belongs_to :user, null: false, foreign_key: true
      t.decimal :price
      t.string :location
      t.decimal :x
      t.decimal :y

      t.timestamps
    end
  end
end
