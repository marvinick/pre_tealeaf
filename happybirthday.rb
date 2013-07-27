puts "What year were you born (19xx)?: "
b_year = gets.chomp.to_i
puts "What month were you born(xx)?"
b_month = gets.chomp.to_i
puts "What was the date?(xx)"
b_day = gets.chomp.to_i

b = Time.local(b_year, b_month, b_day) 
t = Time.new 

age = 1 

while Time.local(b_year + age, b_month, b_day) <= t 
  puts "SPANK"
  age = age + 1 
end 

