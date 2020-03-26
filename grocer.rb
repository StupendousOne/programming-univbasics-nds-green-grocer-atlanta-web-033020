def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  count = 0
  
  while collection[count] do
    if collection[count][:item] == name then
      return collection[count]
    end
    count += 1
  end
  
  nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  new_cart = []
  count = 0
  
  while cart[count] do
    if find_item_by_name_in_collection(cart[count][:item], new_cart) then
      search_count
      while new_cart[search_count] do
        if new_cart[search_count][:item] == cart[count][:item] then
          new_cart[search_count][:count] += 1
        end
        search_count += 1
      end
    else
      new_cart << cart[count]
      new_cart[-1][:count] = 1
    end
    count += 1
  end
  
  return new_cart
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  new_cart = cart
  count = 0
  
  while coupons[count] do
    cart_count = 0
    new_cart << find_item_by_name_in_collection(coupons[count][:item], new_cart)
    new_cart[-1][:item] += " W/COUPON"
    new_cart[-1][:price] = coupons[count][:cost]/coupons[count][:num]
    while new_cart[cart_count] do
      if new_cart[cart_count][:item] == coupons[count][:item] ? 
      cart_count += 1
    end
    count += 1
  end
  
  new_cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
