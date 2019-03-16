class Product < ActiveRecord::Base
  monetize :price_in_cents
  composed_of :price,
              :class_name => 'Money',
              :mapping => %w(price cents),
              :converter => Proc.new { |value| Money.new(value) }
end
