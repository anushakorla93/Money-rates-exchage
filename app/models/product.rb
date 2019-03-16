class Product < ActiveRecord::Base
  monetize :price_in_cents
end
