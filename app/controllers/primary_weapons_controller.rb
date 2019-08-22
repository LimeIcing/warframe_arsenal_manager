class PrimaryWeaponsController < ApplicationController
  require 'httparty'
  require 'json'

  def index
    @primary_weapons = PrimaryWeapon.all
  end

  def fetch
    response = HTTParty.get('https://api.warframestat.us/weapons')

    puts response.code

    parsed = JSON.parse(response.body)

    parsed.each do |weapon|
      if weapon['slot'] == 1
        puts "this is a primary named #{weapon['name']}"
        if PrimaryWeapon.find_by_name(weapon['name']).nil?
        # Don't run this file. The following line crashes.

          w = PrimaryWeapon.new(
            name: weapon['name'],
            mastery: weapon['masteryReq'],
            weapon_type: weapon['type'],
            trigger_type: weapon['trigger'],
            ammo_type: weapon['type'],
            is_alarming: weapon['noise'] == 'Alarming' ? true : false,
            projectile_speed: weapon['flight'],
            fire_rate: weapon['fireRate'],
            accuracy: weapon['accuracy'],
            mag_size: weapon['magazineSize'],
            max_ammo: weapon['ammo'],
            reload_time: weapon['reloadTime'],
            impact_damage: weapon['damageTypes']['impact'],
            puncture_damage: weapon['damageTypes']['puncture'],
            slash_damage: weapon['damageTypes']['puncture'],
            crit_chance: weapon['criticalChance'],
            crit_multiplier: weapon['criticalMultiplier'],
            status_chance: weapon['procChance']
          )

          if w.projectile_speed.nil?
            w.projectile_speed = -1
          end

          w.save
        end
      end
    end

    redirect_to(action: index)
  end

end
