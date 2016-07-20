class CreateConcerts < ActiveRecord::Migration[5.0]
  def change
    create_table :concerts do |t|
      t.string :title
      t.string :datetime
      t.string :ticket_status
      t.string :on_sale_datetime
      t.string :venue_name
      t.string :artists
      t.string :city
      t.string :artist1
      t.string :artist2
      t.string :artist3
      t.string :time
      t.string :venue_address
      t.decimal :venue_latitude
      t.decimal :venue_longitude
      t.timestamps
    end
  end
end
