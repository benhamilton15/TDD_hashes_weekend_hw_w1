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
