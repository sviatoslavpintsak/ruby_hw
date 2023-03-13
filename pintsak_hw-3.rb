# Знайти найбільший та найменший елементи масиву
arr = [3, 6, 1, 8, 2, 10]
puts "Найменший елемент: #{arr.sort[0]}"
puts "Найбільший елемент: #{ arr.sort[-1]}"

# Обчислити суму елементів масиву
arr_sum = arr.reduce(0){|a, i| a  +  i}
puts "Сума елементів: #{arr_sum}" 

# Знайти кількість входжень заданого елементу у масив 
elem = 8 
count = 0
puts arr.select{|i| count+=1 if i == elem} , count
# Видалити всі входження заданого елементу з масиву
new_arr = []
arr.select{|i| new_arr << i if i!=elem}
puts new_arr.inspect


# Вивести масив у зворотному порядку, не використовуючи метод reverse
reversed_arr = []
(-1).downto((-1)*arr.length){|index| reversed_arr<<arr[index]}
puts reversed_arr.inspect
# Або:
arr.reverse_each{|i| reversed_arr<< i}
puts reversed_arr.inspect


# Перевірити, чи містить масив заданий елемент
arr = [3, 6, 1, 8, 2, 10]
elem = 6
if arr.any?(elem)
  puts "Масив містить елемент #{elem}"
else
  puts "Масив не містить елемент #{elem}"
end
 
# Вивести всі парні елементи масиву
puts arr.reject{|i| i%2 != 0}.inspect
# Вивести всі непарні елементи масиву
puts arr.reject{|i| i%2 == 0}.inspect

# Вивести новий масив, що містить квадрати елементів початкового масиву
sqr_arr =[]
arr.each{|i| sqr_arr << i**2}
puts sqr_arr.inspect

# Перетворити масив в хеш, 
# де ключами будуть елементи, а значеннями їх індекси у масиві
hash = {}
(0...arr.length).each{|i| hash[arr[i]] = i}
 puts hash.inspect

 # Перетворити масив у новий масив, де кожен елемент - це сума його і попереднього елементів у початковому масиві
arr = [3, 6, 1, 8, 2, 10]
n_arr = []
arr.each_index{|i| i == 0 ? n_arr<<arr[i] : n_arr << (arr[i]+ arr[i-1])}
     puts n_arr.inspect


# Перетворити масив у новий масив, де кожен елемент - це сума його 
# і всіх попередніх елементів у початковому масиві
nw_arr = []
(0...arr.length).each{|i| i == 0 ? nw_arr << arr[i] : nw_arr << nw_arr[i-1] + arr[i]}
puts  nw_arr.inspect


# Вивести індекс першого елементу масиву, який більше за задане число
arr = [3, 6, 1, 8, 2, 10]
number = 5
# Варіант 1
puts arr.find_index(arr.drop_while{|i| i < number}[0])

# Варіант 2
for i in (0...arr.length)
    if  arr[i] > number 
        print i 
        break
    end
end



# Вивести елементи масиву, які рівні заданому числу
arr = [3, 6, 1, 8, 2, 10, 6, 1]
number = 6
arr_with_number =[]
arr.each{|elem|  arr_with_number << elem if elem ==  number }
puts arr_with_number.inspect


# Перетворити масив строк у новий масив, де кожна строка записана у зворотному порядку
arr = ["hello", "world", "ruby"]
new_str = ''
arr.each do |word|  
    for i in ((-1).downto((-1)*word.length))
        new_str << word[i]
    end
    new_str << ' '
end
puts new_str.split(' ').inspect


# Вивести суму елементів масиву, які менші за задане число
arr = [3, 6, 1, 8, 2, 10]
number = 5
sum = arr.partition { |elem|  elem < number }
puts sum[0].sum


# Вивести кількість унікальних елементів масиву
arr = [1, 2, 3, 4, 3, 2, 1, 5, 6, 5]
uniq_arr = []
arr.each{|i| uniq_arr << i if uniq_arr.none?(i) }
puts uniq_arr.count


# Перетворити масив строк у новий масив, де кожна строка записана в верхньому регістрі
arr = ["hello", "world", "ruby"]
text_arr = arr.join(' ').upcase.split(' ')
puts text_arr.inspect


# Знайдіть суму перших 10 натуральних чисел
puts (1..10).reduce(0){|sum, i| sum += i }


# Виведіть всі числа від 1 до 100, які діляться на 3 без остачі
third_arr = []
(1..100).select{|i| third_arr << i if i % 3 == 0}
puts third_arr.inspect


# Знайдіть факторіал числа 5 (5!)
n = 5
puts (1..n).each.reduce(1){|f,e| f*=e }


# Виведіть всі числа Фібоначчі до 100
fibonacci = [1, 1]
loop do 
  fibonacci << fibonacci[-2] + fibonacci[-1]
  break if fibonacci.last > 100
end
puts fibonacci[0..-2].inspect 


# Знайдіть кількість слів у рядку:
string = "The quick brown fox jumps over the lazy dog"
word_count = string.count(' ')+1
puts word_count 


# Знайдіть суму всіх чисел масиву
numbers = [1, 2, 3, 4, 5]
sum = numbers.inject(:+)
puts sum

# Знайдіть найбільше число в масиві
numbers = [4, 2, 7, 1, 9, 5]
puts numbers.sort[-1]


# Виведіть всі ключі та значення хешу
hash = {a: 1, b: 2, c: 3}
puts hash.map {|key, value| "Key: #{key}, Value: #{value}"}


# Перетворіть масив чисел у масив рядків
numbers = [1, 2, 3, 4, 5]
arr =  numbers.join(' ').split(' ')
puts arr.inspect


# Виведіть всі парні числа масиву:
numbers = [1, 2, 3, 4, 5]
even_numbers = numbers.reject {|i| i % 2 != 0}
puts even_numbers.inspect 


# Виведіть всі значення хешу, які є парними числами
hash = {a: 1, b: 2, c: 3, d: 4}
even_values = hash.map {|key, value| value if value % 2 == 0}#.compact
puts even_values.inspect


# ---------- block -----------------

# Використання блоку для ітерації по масиву
numbers = [1, 2, 3, 4, 5]
 
numbers do |num|
    i = 0 
    until i < numbers.size
            puts numbers[i]
        i += 1
    end
end


# Передача лямбди у функцію 
 
square_of_triangle = lambda do |abc|
  p = abc.sum/2
 s = (p*(p - abc[0]) * (p - abc[1]) * (p - abc[2])) ** 0.5
end 


def is_triangle(lmba, abc)
 abc.sort
 if abc[0]+abc[1] > abc[2]
     sq = lmba.call(abc)
     puts "it's could be triangle and square = #{sq}"
 elsif  abc[0]+abc[1] <= abc[2]
     puts "looks like you entered so small size of side"
 else
     puts " try agai"
 end
end
tri = [3,4,5]
tri_n = [1,6,7]
puts is_triangle(square_of_triangle, tri)