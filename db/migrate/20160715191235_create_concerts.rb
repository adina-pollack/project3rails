class CreateConcerts < ActiveRecord::Migration[5.0]
  def change
    create_table :concerts do |t|
      t.string :name
      t.string :date
      t.string :datetime
      t.string :ticket_status
      t.string :venue_name
      t.string :venue_city
      t.timestamps
    end
  end
end
