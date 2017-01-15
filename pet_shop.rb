
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
end

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
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      return pet 
    end
  end
     return nil
end

def remove_pet_by_name(pet_shop, pet_name)
  pet = find_pet_by_name(pet_shop, pet_name)
  pet_shop[:pets].delete( pet )
end


def add_pet_to_stock(pet_shop, new_pet)
pet_shop[:pets] << new_pet
end


def customer_pet_count(customer)
  customer[:pets].count
end

# def add_or_remove_cash(pet_shop, cash)
#   pet_shop[:admin][:total_cash] += cash

def add_pet_to_customer(customer, new_pet)
  
  customer[:pets] << new_pet

end

def customer_can_afford_pet(customer, new_pet)
   if (customer[:cash] >= new_pet[:price])
     return true
   else  
    return false
  end 
end

def sell_pet_to_customer(pet_shop, pet, customer)
  customer_sale = customer_can_afford_pet(customer, pet)
  
 
  if (customer_sale == true)
    customer_buys_pet = add_pet_to_customer(customer, pet)
   return customer_buys_pet
 end
end