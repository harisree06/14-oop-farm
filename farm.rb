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

  puts "----- HARVEST MOON ALPHA 1.0 -----"

  puts "\nWelcome! As a new farmer, what should we work on first? Pick one of the following below."
  puts "\nOptions:"
  puts "field   -> adds a new field"
  puts "harvest -> harvests crops and adds to total harvested"
  puts "status  -> displays some information about the farm"
  puts "relax   -> provides lovely descriptions of your fields"
  puts "exit    -> exits the program"

#### USER INPUT ####

user_input = gets.chomp.downcase

if user_input == "field"
  puts "What kind of field is it: corn or wheat?"
  field_input = gets.chomp.downcase

  puts "How large is the field in hectares?"
  hectare_input = gets.chomp.to_i

  crop = Field.new(field_input,hectare_input)

elsif user_input == "status"
  puts Farm.all.inspect
  puts Farm.total_harvest

else
  puts "Sorry, we don't specialize in that farming. Try again."
end


##### FIELD ######
def add_field
   legit_field? = false

   while legit_field? == false
     puts "Do you want a corn or wheat field?"
     field_type = gets.chomp

     if field_type == "corn" || field_type == "wheat"
       legit_field? = true
     else
       puts "Invalid field type, please try again!"
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
puts
puts Farm.all.inspect
puts Farm.total_harvest
