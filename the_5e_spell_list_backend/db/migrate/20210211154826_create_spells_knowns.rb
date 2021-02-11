class CreateSpellsKnowns < ActiveRecord::Migration[6.1]
  def change
    create_table :spells_knowns do |t|
      t.belongs_to :character
      t.belongs_to :spell
      
      t.timestamps
    end
  end
end
