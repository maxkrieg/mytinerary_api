class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.string :location, null: false
      t.date :date, null: false
      t.time :start_time
      t.time :end_time
      t.text :attendees
      t.text :desc
      t.references :itinerary, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
