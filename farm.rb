# Options:
# field -> adds a new field
# harvest -> harvests crops and adds to total harvested
# status -> displays some information about the farm
# relax -> provides lovely descriptions of your fields
# exit -> exits the program
# --------------------

# STRATEGY
# Let's start with 'field' option only with two classes: farm and field.
# This assignment is similiar to the contact phone.
# The farm class will handle the user's option while the field class will # initialize, store, calculate and access the instant and class methods.

require_relative 'field'

class Farm

  def main_menu
    while true
      print_farm_option
      user_selected = gets.chomp
      call_option(user_selected)
    end
  end

  def print_farm_option

    puts "----- HARVEST MOON ALPHA 1.0 -----"

    puts "\nWelcome! As a new farmer, what should we work on first? Pick one of the following below."
    puts "\nOptions:"
    puts "field   -> adds a new field"
    puts "harvest -> harvests crops and adds to total harvested"
    puts "status  -> displays some information about the farm"
    puts "relax   -> provides lovely descriptions of your fields"
    puts "exit    -> exits the program"

  end

  def call_option(user_selected)

    case user_selected
    when "field" then add_new_field
    when "harvest" then harvest_farm
    when "status" then farm_status
    when "relax" then take_a_break
    when "exit" then abort("Bye bye")
    end

  end

##### FIELD ######
def add_new_field
   corn_or_wheat = false       # this farm only makes corn or wheat atm

   while corn_or_wheat == false
     puts "Do you want a corn or wheat field?"
     field_type = gets.chomp

     if field_type == "corn" || field_type == "wheat"
       corn_or_wheat = true
     else   # loop until we get corn or wheat
       puts "We don't specialize in that! Please try again!"
     end

   end

   puts "How large is the field in hectares?"
   field_size = gets.to_i

   new_field = Field.create(field_type, field_size)
   puts "Added a #{ field_type } field of #{ field_size } hectares!"

 end

 ###### HARVEST ######
 def harvest_farm
     Field.harvest_fields

     puts "The farm has #{ Field.total_harvest } harvested food so far."
   end

   ##### status #####
   ##### RELAX #####
   ##### EXIT #####
end
