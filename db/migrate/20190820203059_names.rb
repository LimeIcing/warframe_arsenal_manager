class Names < ActiveRecord::Migration[5.2]

  def up
    add_column('primary_weapons', 'name', :string, limit: 50, after: 'id')
    add_column('secondary_weapons', 'name', :string, limit: 50, after: 'id')
    add_column('melee_weapons', 'name', :string, limit: 50, after: 'id')
  end

  def down
    remove_column('primary_weapons', 'name')
    remove_column('secondary_weapons', 'name')
    remove_column('melee_weapons', 'name')
  end

end
