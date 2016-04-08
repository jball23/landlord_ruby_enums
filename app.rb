require_relative "data"
# apartments = data[:apartments]
# tenants = data[:tenants]

def starting_prompt()
  apartments = data[:apartments]
  tenants = data[:tenants]

  puts "Welcome to MyAppartmentManager.com"
  puts "1) To View All Apartments"
  puts "2) To View All Tenants"
  puts "3) To Exit"

  selection = gets.chomp.to_i

  if selection == 1
    puts apartments
  elsif selection == 2
    puts tenants
  else
    puts "Thanks for using MyAppartmentManager.com!"
    puts "If you would like to use our service again,"
    puts "please reload this page."
  end
end

starting_prompt()



# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # The data is structured in 2 arrays, apartments and tenants, each consisting of multiple hashes.
  # What are the properties for each of the two types of hashes
  # The hashes within the apartments array contain keys for id, address, monthly_rent, and square_feet.
  # The hashes within the tenants array contain keys for id, name, age, and appartment_id.

# Use enumerables to -
  # Print all the addresses for the apartments
  # addresses = apartments.map do |apartment|
  #   apartment[:address]
  # end


  # Print all the names for tenants
  # names = tenants.map do |name|
  #   name[:name]
  # end


  # Print only apartments that are less then 700 in rent
  # small_apartments = apartments.select{ |rent| rent[:monthly_rent] < 700}


  # Print only tenants that are over the age of 44
  # old_tenants = tenants.select{ |age| age[:age] > 44}


  # Print only tenants that have an apartment id of 1
  # id_1 = tenants.select{ |id| id[:apartment_id] == 1}


  # Print all the tenants in order from youngest to oldest
  # young_to_old = tenants.sort_by{ |age| age[:age]}


  # Print the names of all the tenants alphabetically
  # names_alphabetical = tenants.sort_by{ |name| name[:name]}


  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants
