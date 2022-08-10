class CreateTournaments < ActiveRecord::Migration[7.0]
  def change
    create_table :tournaments do |t|
      t.string :name
      t.integer :team_count
      t.string :location
      t.date :date

      t.timestamps
    end
  end
end
