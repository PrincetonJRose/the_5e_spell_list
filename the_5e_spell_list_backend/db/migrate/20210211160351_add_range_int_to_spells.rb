class AddRangeIntToSpells < ActiveRecord::Migration[6.1]
  def change
    add_column :spells, :range_int, :integer
  end
end
