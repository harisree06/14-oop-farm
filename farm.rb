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
  @@field_type = []

  puts "----- HARVEST MOON ALPHA 1.0 -----"

  puts "\nWelcome! As a new farmer, what should we work on first? Pick one of the following below."
  puts "\nOptions:"
  puts "field   -> adds a new field"
  puts "harvest -> harvests crops and adds to total harvested"
  puts "status  -> displays some information about the farm"
  puts "relax   -> provides lovely descriptions of your fields"
  puts "exit    -> exits the program"

  # add field and hectare size to the bodies list
  def self.add(information)
    if @@bodies.include?(information)
     puts  "That body already exists in this solar system"
    else
      @@bodies << information
      puts "\n#{information.field_name.capitalize} field is #{information.hectare_size} hectares."
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
    return "\nThe farm has a total of #{total_harvest} harvested food so far."

  end

end


#### USER INPUT ####

user_input = gets.chomp.downcase

if user_input == "field"
  puts "What kind of field is it: corn or wheat?"
  field_input = gets.chomp.downcase

  puts "How large is the field in hectares?"
  hectare_input = gets.chomp.to_i

  crop = Field.new(field_input,hectare_input)

elsif user_input == "status"
  index = 0
  @@bodies.each do |information|
    information[index]
    index += 1
  end
  puts Farm.total_harvest

else
  puts "Sorry, we don't specialize in that farming. Try again."
end





Farm.add(crop)

puts
puts Farm.all.inspect
puts Farm.total_harvest
