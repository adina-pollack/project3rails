class CreateConcerts < ActiveRecord::Migration[5.0]
  def change
    create_table :concerts do |t|
      t.string :name
      t.string :date
      t.string :datetime
      t.string :ticket_status
      t.references :venue
      t.timestamps
    end
  end
end
