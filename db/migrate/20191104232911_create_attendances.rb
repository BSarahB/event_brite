class CreateAttendances < ActiveRecord::Migration[5.2]
  def change
    create_table :attendances do |t|
      t.string :stripe_customer_id
      #one ne modifie que la migration concernant la table intermediaire .
      t.references :user, index: true #cela cree la colonne user_id dans la table attendances
      t.references :event, index: true #cela cree la colonne event_id dans la table attendances

      t.timestamps
    end
  end
end
