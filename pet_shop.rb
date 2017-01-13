
# #Return pet shop name.

def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

#return pet_shop total_cash
def total_cash(sum)
  return sum[:admin][:total_cash]
end

#add and remove money from the till

def add_or_remove_cash(pet_shop, cash)
  pet_shop[:admin][:total_cash] += cash
  # total_cash += cash
  # return total_cash
end_

def pets_sold(sold)
   return sold[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop,sold)
  pet_shop[:admin][:pets_sold] += sold
end

def stock_count(stock)
  stock[:pets].count
end

def pets_by_breed(pet_shop, breed)
  pets_by_breed = []
  for pet in pet_shop[:pets]
    if pet[:breed] == breed
      pets_by_breed.push( pet )
    end
  end
  return pets_by_breed
end

def find_pet_by_name(pet_shop, pet_name)
  find_pet_by_name = []
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      find_pet_by_name.push( pet_name )
    end
  end
  return find_pets_by_name
end

