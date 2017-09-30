# Options:
# field -> adds a new field
# harvest -> harvests crops and adds to total harvested
# status -> displays some information about the farm
# relax -> provides lovely descriptions of your fields
# exit -> exits the program
# --------------------
require_relative 'field'
# require_relative 'harvest'
# require_relative 'status'
# require_relative 'relax'

class Farm

  ##### CLASS VARIABLE #####
  @@bodies =[]

  puts "----- HARVEST MOON ALPHA 1.0 -----"

  puts "\nWelcome! As a new farmer, what should we work on first?"
  puts "\nOptions:"
  puts "field   -> adds a new field"
  puts "harvest -> harvests crops and adds to total harvested"
  puts "status  -> displays some information about the farm"
  puts "relax   -> provides lovely descriptions of your fields"
  puts "exit    -> exits the program"

  # add field and hectare size to the bodies list
  def self.add(field_and_hectare)
    if @@bodies.include?(field_and_hectare)
     puts  "That body already exists in this solar system"
    else
      @@bodies << field_and_hectare
      puts "\n#{field_and_hectare.field_name.capitalize} field is #{field_and_hectare.hectare_size} hectares."
    end
  end

  def self.all
    @@bodies
  end

  def self.total_harvest

    total_harvest = 0

    @@bodies.each do |food|
      total_harvest += food.hectare_size
    end
    return "\nThe farm has a total of #{} harvested food so far."

  end

end

crop = Field.new("crop",50)

Farm.add(crop)

puts
puts Farm.all.inspect
puts
puts Farm.total_harvest
