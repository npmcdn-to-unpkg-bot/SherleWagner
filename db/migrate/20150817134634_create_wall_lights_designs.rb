class CreateWallLightsDesigns < ActiveRecord::Migration
  def change
    create_table :wall_lights_designs do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end