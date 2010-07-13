class CreateSectionProperties < ActiveRecord::Migration
  def self.up
    create_table :section_properties do |t|
      t.column :name, :string, :limit => 128
      t.column :key, :string, :limit => 128
      t.timestamps
    end

    create_table :section_property_values do |t|
      t.column :section_property_id, :integer
      t.column :section_id, :integer
      t.column :value, :text
      t.timestamps
    end
  end

  def self.down
    drop_table :section_property_values

    drop_table :section_properties
  end
end
