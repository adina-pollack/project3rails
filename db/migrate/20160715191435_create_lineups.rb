class CreateLineups < ActiveRecord::Migration[5.0]
  def change
    create_table :lineups do |t|
      t.references :concert, foreign_key: true

      t.timestamps
    end
  end
end
