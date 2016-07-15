class CreateVenues < ActiveRecord::Migration[5.0]
  def change
    create_table :venues do |t|
      t.string :address
      t.string :name
      t.references :concert, foreign_key: true

      t.timestamps
    end
  end
end
