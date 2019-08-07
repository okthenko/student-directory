hash_1 = Hash.new

hash_1[:greeting] = "Hello"

puts hash_1

# .tap

hash_2 = Hash.new.tap do |e|
    e[:greeting] = "Bonjour" 
    e[:spanish_greeting] = "Hola" #if have_a_red_apple?
end

puts hash_2

array_1 = (1..10).tap { |x| puts "original: #{x}" }.to_a.
    tap    { |x| puts "array: #{x}" }.
    select { |x| x%2 == 0 }.
    tap    { |x| puts "evens: #{x}" }.
    map    { |x| x*x }.
    tap    { |x| puts "squares: #{x}" }

puts array_1

