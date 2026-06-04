def stock_picker(prices)
  highest_profit = 0
  date_pair = []

  buy = 0
  sell = prices.length

  prices.each_with_index do |current_price, i|
    (buy...sell).each do |j|
      result = prices[j] - current_price

      if result > highest_profit
        highest_profit = result
        date_pair = [i, j]
      end
    end

    buy += 1
  end

  date_pair
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
