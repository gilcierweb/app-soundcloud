class CreateTracks < ActiveRecord::Migration[7.1]
  def change
    create_table :tracks do |t|
      t.string :name
      t.text :lyric
      t.references :album, null: false, foreign_key: true
      t.references :gender, null: false, foreign_key: true

      t.timestamps
    end
  end
end
