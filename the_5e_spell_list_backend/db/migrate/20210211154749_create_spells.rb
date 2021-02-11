class CreateSpells < ActiveRecord::Migration[6.1]
  def change
    create_table :spells do |t|
      t.string :name
      t.string :description
      t.string :higher_level
      t.string :page
      t.string :range
      t.string :components
      t.string :material
      t.string :ritual
      t.string :duration
      t.string :concentration
      t.string :casting_time
      t.string :level
      t.integer :level_int
      t.string :school
      t.string :dnd_class
      t.string :archetype
      t.string :circles

      t.timestamps
    end
  end
end
