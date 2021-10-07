
def stock_picker(stocks)
    highest_profit=stocks[1]-stocks[0]
    highest_index=[0,1]
    stock_size=stocks.length
    min_stock=stocks[0]
    min_index=0
    stocks.each_with_index do |stock,index|
        #compare current stock price with the max profit and ensures that the indices being compared are different
        if(stock-min_stock>highest_profit && min_index!=index)
            highest_profit=stock-min_stock
            highest_index=[min_index,index] 
        end
        #update the minimum stock
        if(stock<min_stock)
            min_stock=stock
            min_index=index
        end
    end
    highest_index
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
stock_picker([3, 5, 7, 9, 16, 26, 33, 34, 43, 45, 51, 56, 65])
stock_picker([65, 56, 51, 45, 43, 34, 33, 26, 16, 9, 7, 5, 3])

