class CreateSites < ActiveRecord::Migration[6.0]
  def change
    create_table :sites do |t|
      t.string  :name
      t.string  :site_uuid
      t.string  :location
      t.string  :phone
      t.string  :email
      t.string  :study_uuid      
      t.string  :address_line_1
      t.string  :address_line_2
      t.string  :state
      t.string  :city
      t.string  :country
      t.timestamps
    end
  end
end
