require 'httparty'
require 'json'

response = HTTParty.get('https://api.warframestat.us/weapons')

puts response.code

parsed = JSON.parse(response.body)

parsed.each do |weapon|
  case weapon['type'].downcase
  when 'rifle'
    puts "this is a rifle named #{weapon['name']}"
    PrimaryWeapon.new(name: weapon['name'])
  end
end
