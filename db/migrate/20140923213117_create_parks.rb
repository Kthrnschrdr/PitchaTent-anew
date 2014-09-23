class CreateParks < ActiveRecord::Migration
  def change
    create_table :parks do |t|
      t.string :name
      t.string :address
      t.decimal :latitude
      t.decimal :longitude
      t.string :url

      t.timestamps
    end
  end
end
