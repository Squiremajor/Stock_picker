def stock_picker(days)
    buy_sell = []
    profit = 0
    days.each_with_index do |s_price, s_index|
        days.each_with_index do |b_price, b_index|
            if s_price > b_price && s_index > b_index
                if s_price - b_price > profit
                    profit = s_price - b_price
                    buy_sell[0] = b_index
                    buy_sell[1] = s_index
                end
            end
        end
    end
    puts buy_sell
end