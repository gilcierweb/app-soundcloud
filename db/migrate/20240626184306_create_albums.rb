class CreateAlbums < ActiveRecord::Migration[7.1]
  def change
    create_table :albums do |t|
      t.string :title
      t.text :description
      t.date :release
      t.integer :rating
      t.references :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
