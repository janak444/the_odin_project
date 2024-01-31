# Find out maximum profit that can be made to sell the items

def stock_picker (prices)
    profit = 0
    profit_interval = ""
    prices.each_with_index do |cp, i|
        prices[i+1..-1].each_with_index do |sp, j|
            if (sp - cp)> profit
                profit = sp-cp
                profit_interval = "[#{i},#{i+j+1}]"
            end
        end
    end
    puts profit_interval
end

stock_picker([17,3,6,9,15,8,6,1,10,100])
