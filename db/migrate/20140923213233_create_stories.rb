class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.integer :person_id
      t.integer :park_id
      t.text :story
      t.string :title

      t.timestamps
    end
  end
end
