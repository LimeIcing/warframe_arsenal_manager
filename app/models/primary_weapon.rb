class PrimaryWeapon < ApplicationRecord

  scope :sorted, -> { order('name ASC') }

end
