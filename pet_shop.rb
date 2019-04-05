# takes in @pet_shop hash and returns a string "Camelot of Pets" which is under the key name in the hash
def pet_shop_name(hash)
  return hash[:name]
end


# takes in @pet_shop hash and returns 1000 which is in a nested array under the key :admin then :total cash

def total_cash(hash)
  return hash[:admin][:total_cash]
end

#takes in @pet_shop and a number to change the total cash of the pet store inside the hash . Doesnt need to return anything

def add_or_remove_cash(hash, number)
  hash[:admin][:total_cash] += number
end

#takes in @pet_shop and returns number of pets sold. should be similar to total_cash but uses different key.

def pets_sold(hash)
  return hash[:admin][:pets_sold]
end

#this function need to take in the pet shop hash and a number to increase the value of pets_sold. nothing needs returned. will be tested by previous function

def increase_pets_sold(hash, number)
  hash[:admin][:pets_sold] += number
end

#takes in the pet shop hash and returns the stock count. stock count is the number of pets in the array under the key [:pets]

def stock_count(hash)
return hash[:pets].length
end

# takes in the pet shop hash and a string of a pet breed. needs to count the number of pets of that string by putting each pet of that breed in an array. for loop over pets and do a .include? for each pet and push onto array and return that array.

def pets_by_breed(hash,pet_breed)
  breeds = []
  for pet in hash[:pets]
    if pet[:breed].include?(pet_breed)
      breeds.push(pet[:breed])
    end
  end
  return breeds
end

#takes in the pet shop hash and a string of a pets name. needs to return a hash with the pets details.

#second test require nil to be returned if no pet is found with that name.

def find_pet_by_name(hash, pet_name)
  for pet in hash[:pets]
    if pet[:name] == pet_name
      return pet
    end
  end
  return nil
end
