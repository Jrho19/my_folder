puts "How much is the bill?"
bill = gets.to_f
puts "What percentage would you like to tip?"
puts "10%? 15%? Or 20%?"
tip_percent = gets.to_f
puts "How many people are at your table?"
table_amt = gets.to_f

class Numeric
  def percent_of(n)
    self.to_f / n.to_f * 100.0
  end
end
puts "tip amoutn: #{tip_percent}"

tip_ans = (((tip_percent).percent_of(bill) + bill)/ table_amt).round(2)


p "Your portion of the total bill is $#{tip_ans}!"

# puts "The bill is $#{bill}"
# bill = bill.to_f.round(2)
# tip = bill * 0.2
# total = bill + tip
# puts "The total is $#{total}"
