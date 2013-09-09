class CreateVenueInfos < ActiveRecord::Migration
  def change
    create_table :venue_infos do |t|
      t.string :name
      t.text :description
      t.string :picture

      t.timestamps
    end
  end
end
