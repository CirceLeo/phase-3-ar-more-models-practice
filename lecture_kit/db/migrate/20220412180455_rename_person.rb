class RenamePerson < ActiveRecord::Migration[5.2]
  
  def change
      remove_column :plant_parenthoods, :plant_parent_id
      add_column :plant_parenthoods, :person_id, :integer
  end
  
end
