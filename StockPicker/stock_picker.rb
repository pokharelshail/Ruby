def stock_picker(stocks)
  return [-1, -1] if stocks.empty?

  smallest_val = [stocks[0], 0] 
  max_profit = 0
  best_days = [-1, -1]
  (1...stocks.length).each do |i|
    current_profit = stocks[i] - smallest_val[0]

    if current_profit > max_profit
      max_profit = current_profit
      best_days = [smallest_val[1], i]
    end

    if stocks[i] < smallest_val[0]
      smallest_val = [stocks[i], i]
    end
  end
  best_days
end

print stock_picker([17,3,6,9,15,8,6,1,10])