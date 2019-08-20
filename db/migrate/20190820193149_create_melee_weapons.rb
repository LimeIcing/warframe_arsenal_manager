class CreateMeleeWeapons < ActiveRecord::Migration[5.2]

  def up
    create_table :melee_weapons do |t|
      t.integer 'mastery', default: 0
      t.string 'weapon_type', limit: 20
      t.float 'attack_speed'
      t.float 'finisher_damage'
      t.float 'channeling_multiplier'
      t.float 'block_resist'
      t.float 'impact_damage', default: 0
      t.float 'puncture_damage', default: 0
      t.float 'slash_damage', default: 0
      t.float 'crit_chance', default: 0
      t.float 'crit_multiplier', default: 1
      t.float 'status_chance', default: 0
      t.float 'slam_damage'
      t.string 'slam_type', default: '', limit: 20
      t.float 'slam_radius'
      t.float 'slide_damage'
      t.float 'wall_damage'
      t.timestamps
    end
  end

  def down
    drop_table :melee_weapons
  end

end
