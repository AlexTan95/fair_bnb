class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.integer :user_id
      t.string :address
      t.string :city
      t.string :country
      t.string :property_type
      t.integer :no_of_bed
      t.integer :no_of_bathroom
      t.string :description
      t.integer :price
      t.string :review
      t.integer :reservation_id
      t.integer :max_guest
      t.integer :rating

      t.timestamps
    end
  end
end
