class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.string :location, null: false
      t.date :date
      t.text :start_time
      t.text :end_time
      t.text :attendees
      t.text :desc
      t.references :itinerary, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
