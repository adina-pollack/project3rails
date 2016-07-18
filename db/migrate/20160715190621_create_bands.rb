class CreateBands < ActiveRecord::Migration[5.0]
  def change
    create_table :bands do |t|
      t.string :name
      t.string :genre
      t.string :photo_url
      t.references :concert
      t.timestamps
    end
  end
end
