class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.references :user, foreign_key: true
      t.references :client, foreign_key: true
      t.references :person, foreign_key: true
      t.datetime :from_date
      t.datetime :to_date

      t.timestamps
    end
  end
end
