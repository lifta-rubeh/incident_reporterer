class CreateIncidentReports < ActiveRecord::Migration
  def self.up
    create_table :incident_reports do |t|
      t.string :name
      t.string :phone
      t.datetime :incident_occurred_at
      t.string :incident_location
      t.text :incident_description
      t.text :incident_location_description
      t.boolean :other_party_is_tns_employee

      t.timestamps
    end
  end

  def self.down
    drop_table :incident_reports
  end
end
