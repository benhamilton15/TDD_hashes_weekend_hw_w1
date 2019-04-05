# takes in @pet_shop hash and returns a string "Camelot of Pets" which is under the key name in the hash

def pet_shop_name(pet_shop)
  return pet_shop[:name]
end


# takes in @pet_shop hash and returns 1000 which is in a nested array under the key :admin then :total cash

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

#takes in @pet_shop and a number to change the total cash of the pet store inside the hash . Doesnt need to return anything

def add_or_remove_cash(pet_shop, amount)
  pet_shop[:admin][:total_cash] += amount
end

#takes in @pet_shop and returns number of pets sold. should be similar to total_cash but uses different key.

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

#this function need to take in the pet shop hash and a number to increase the value of pets_sold. nothing needs returned. will be tested by previous function

def increase_pets_sold(pet_shop, number_of_pets_sold)
  pet_shop[:admin][:pets_sold] += number_of_pets_sold
end

#takes in the pet shop hash and returns the stock count. stock count is the number of pets in the array under the key [:pets]

def stock_count(pet_shop)
return pet_shop[:pets].length
end

# takes in the pet shop hash and a string of a pet breed. needs to count the number of pets of that string by putting each pet of that breed in an array. for loop over pets and do a .include? for each pet and push onto array and return that array.

def pets_by_breed(pet_shop,pet_breed)
  breeds = []
  for pet in pet_shop[:pets]
    if pet[:breed].include?(pet_breed)
      breeds.push(pet[:breed])
    end
  end
  return breeds
end

#takes in the pet shop hash and a string of a pets name. needs to return a hash with the pets details.

#second test requires nil to be returned if no pet is found with that name.

## could be improved in case of multiple pets witht he same name

def find_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      return pet
    end
  end
  return nil
end

# This function takes in the pet shop hash and a string of a pet name. needs to remove the hash of a pet under that name. doesnt need to return anything as it is tested by a previous function.

def remove_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      pet_shop[:pets].delete(pet)
    end
  end
end

#instance variables @ allow the variable to be read outside the file.?

#this function takes in the pet shop hash and an instance variable of a new pet to add to the stock. This needs to be added to the array under the key [:pets]. doesnt need to return anything. is tested by a previous function stock_count.

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

#This function takes in an index position within an array and returns the customers cash under key [:cash]

def customer_cash(customer)
return customer[:cash]
end

#this function takes in a customer and a number and takes the number away from the current customers total cash. doesnt need to return anything. is tested by another function.

def remove_customer_cash(customer, amount_to_be_removed)
customer[:cash] -= amount_to_be_removed
end

#this function takes in a customer and returns a count of the number of pets they have in their array. can .count .length or .size the array. dont know what benefits each has.

def customer_pet_count(customer)
  return customer[:pets].count
end

#takes in a customer and a hash new pet. doesnt need to return anything. pushed the pet into the customers pets array.

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

#this function tests if the customer has enough funds to buy a pet. takes in a customer and the new pet hash. needs to return true or false.

def customer_can_afford_pet?(customer, new_pet)
  if customer[:cash] >= new_pet[:price]
    return true
  else
    return false
  end
end

#takes in the pet pet shop hash, a pet and a customer. This function add this pet to the customers pets, increase the amount of pets sold, remove cash from customer and increase total cash of pet store.

#second test checks if a pet is not found. Added a if statement for the function to not change values if the search for a pet name returns nil.

# third test checks if the funds are sufficient. added an AND statement to the if statement so the customer needs to have sufficient funds and the pet needs to exist.

def sell_pet_to_customer(pet_store, bought_pet, customer)
  if bought_pet != nil && (customer[:cash] >= bought_pet[:price])
    add_pet_to_customer(customer, bought_pet)
    increase_pets_sold(pet_store, 1)
    remove_customer_cash(customer, bought_pet[:price])
    add_or_remove_cash(pet_store, bought_pet[:price])
  end
end

## improvements maybe change the 1 in increase_pets_sold function argument to a variable.
