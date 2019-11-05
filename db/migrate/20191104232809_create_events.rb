class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.datetime :start_date
      t.string :title
      t.text :description
      t.integer :price
      t.string :location
      t.integer :duration
      t.references :admin, index: true #1)on annonce que la table events contient la foreign key de type admin dans le bd migrate events

      t.timestamps
    end
  end
end
