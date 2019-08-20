class ProjectileSpeed < ActiveRecord::Migration[5.2]

  def up
    add_column('primary_weapons', 'projectile_speed', :float, default: -1,
       after: 'is_alarming')
    add_column('secondary_weapons', 'projectile_speed', :float, default: -1,
       after: 'is_alarming')
  end

  def down
    remove_column('primary_weapons', 'projectile_speed')
    remove_column('secondary_weapons', 'projectile_speed')
  end

end
