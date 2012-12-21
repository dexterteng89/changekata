class Change

  def make_change_for(dollar_amt)
    return nil unless dollar_amt.is_a?(Numeric) && dollar_amt >= 0
    total_pennies = (dollar_amt * 100).to_i
    coins = [500, 25, 10, 5, 1]
    array = []    
    coins.each do |coin|
      num_of_coin = total_pennies / coin
      num_of_coin.times do 
        array << coin
      	total_pennies -= coin
      end
    end
    return array
  end

end
