class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :firstName
      t.string :lastName
      t.string :photo_url
      t.string :mobile
      t.string :work

      t.timestamps
    end
  end
end
