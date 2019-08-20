class CreatePrimaryWeapons < ActiveRecord::Migration[5.2]

  def up
    create_table :primary_weapons do |t|
      t.integer 'mastery', default: 0
      t.string 'weapon_type', limit: 20
      t.string 'trigger_type', limit: 20
      t.string 'ammo_type', limit: 20
      t.boolean 'is_alarming', default: true
      t.float 'fire_rate'
      t.float 'accuracy'
      t.integer 'mag_size'
      t.integer 'max_ammo'
      t.float 'reload_time'
      t.float 'impact_damage', default: 0
      t.float 'puncture_damage', default: 0
      t.float 'slash_damage', default: 0
      t.float 'crit_chance', default: 0
      t.float 'crit_multiplier', default: 1
      t.float 'status_chance', default: 0
      t.timestamps
    end
  end

  def down
    drop_table :primary_weapons
  end

end
