class Field

  ##### CLASS VARIABLE ######
  @@fields = []           # collection of fields
  @@total_harvest = 0     # initialize the sum

  def initialize(type, size)
    @type = type
    @size = size
  end

  def type      # READER
    @type
  end

  def size      # READER
    @size
  end

  ##### FIELD METHODS ######
  def self.create(type, size)
    new_field = Field.new(type, size)
    @@fields << new_field
    return new_field
  end

  def food_qty
    if self.type == "corn"
      food_qty = @size * 20
    else  # wheat
      food_qty = @size * 30
    end
    return food_qty
  end

  ###### FIELD END ######

  ##### HARVEST METHODS ######

  # Output the results from each field we have made
  def self.harvest_fields

    @@fields.each do |field|
      @@total_harvest += field.food_qty
      puts "Harvesting #{ field.food_qty } from #{ field.size } hectare #{ field.type } field."
    end

  end

  # output the total quantity
  def self.total_harvest
    @@total_harvest
  end

  def self.total_hectares(type)
    total = 0
    @@fields.each do |field|
      if field.type == type
        total += field.size
      end
    end
    return total
  end

  ###### HARVEST END ######

  ###### RELAX
  ##### status

  def self.all
    @@fields
  end

end

### Use these calls to test class Field
crop = Field.create("corn",50)
wheat = Field.create("wheat",100)
puts crop.food_qty
puts wheat.food_qty
puts
puts Field.harvest_fields
puts
