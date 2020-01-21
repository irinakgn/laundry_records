class CreateBusinesses < ActiveRecord::Migration[6.0]
  def change
    create_table :businesses do |t|
      t.string :license_type
      t.date :license_expiration_date
      t.string :license_status
      t.date :license_creation_date
      t.string :industry
      t.string :business_name
      t.string :business_name_two
      t.string :address
      t.string :phone
      t.string :borough
      t.string :community_board
      t.string :bin
      t.string :bbl
      t.string :nta
      t.integer :census_tract
      t.string :detail
      t.numeric :longitude
      t.numeric :latitude

      t.timestamps
    end
  end
end
