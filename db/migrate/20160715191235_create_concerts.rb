class CreateConcerts < ActiveRecord::Migration[5.0]
  def change
    create_table :concerts do |t|
      t.string :title
      t.string :datetime
      t.string :ticket_status
      t.string :on_sale_datetime
      t.string :venue_name
      t.string :venue_city
      t.string :artists
      t.string :city
      t.timestamps
    end
  end
end
