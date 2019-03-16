MoneyRails.configure do |config|
    # set the default currency
    Money.default_currency = Money::Currency.new("EUR")
    config.add_rate "EUR", "USD", 1.1341
    config.add_rate "EUR", "PHP", 60.123
    config.add_rate "USD", "PHP", 52.58
    config.add_rate "PHP", "USD", 0.019
    config.add_rate "EUR", "GBP", 1.85
    config.add_rate "GBP", "USD", 1.33
    config.add_rate "GBP", "PHP", 70.37
    config.add_rate "USD", "EUR", 0.88
    config.add_rate "PHP", "EUR", 0.017
    config.add_rate "GBP", "EUR", 1.17
end
    