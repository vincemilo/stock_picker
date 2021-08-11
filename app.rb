def stock_picker(prices)
    day1 = prices[0]
    index = 0
    profit = 0
    days = [0, 0]
    p prices
    prices.each_with_index do |v, i| 
        if v < day1
            day1 = v
            index = i
        end

        if v - day1 > profit
            profit = v - day1
            days = [index, i]
        end
    end

    days
end

stock_picker([17,3,6,9,15,8,6,1,10])