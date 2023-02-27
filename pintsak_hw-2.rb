def sum_positve_numbers

    arr = [4, 0, -5, -1, 7, -1, 3]
    sum = 0
    arr.each{|n| sum += n if n > 0}
    puts "result task_1: \n#{sum}" ,"\n"

end


# 2) Задано масив, створити новий масив із даних цього масиву які є рядком.
def  only_string_vlue
    arr_tsk_2 = ["apple", true, "kiwi", 4, 88, "33", false, 'undefined', nil , "JS"]
    new_arr = []
    arr_tsk_2.compact.each{|item| new_arr.push(item) if item.class == String }

    puts "result task 2:"
    print new_arr ,"\n\n"

end
# 3) Задано масив чисел, знайти число яке найбільш часто входить в масив, 
# занести це число в новий масив і видалити всі входження цього числа із поточного масиву.
def remove_pop_digit   
    arr = [4, 5, 2, 1, 6, 5, 3, 5, 2, 5]
    data = 0
    entrys = 0
    for i in arr
        x = arr.count(i)
        if  x >= entrys
            entrys = x
            data = i
        end
    end
    puts "result task 3:"
    arr.delete(data)
    print data, "\n" , arr ,"\n\n"

end 

# 4) Знайти в масиві двозначні(10+), трьохзначні(100+) та чотирьохзначні(1000+)  числа та повертає в масив їх кількість .
 def digits 
    arr = [1,2,55,3,100, 333, 9999]
    four_dig = 0
    three_dig = 0
    two_dig = 0 
    for i in arr 
            if i / 1000 >= 1
                four_dig +=1
            elsif i / 100 >= 1
                three_dig += 1
            elsif i / 10 >= 1
                two_dig += 1
            end
        end
    new_arr =[ two_dig, three_dig,four_dig]
    puts "result task 4:"
    print new_arr ,"\n\n"
end


#  5 Вивести нові масиви яка складаються із даних початкового масиву, але одного типу даних 
# (не приводити тип стрінг в число навіть якщо там лише число)
def many_types

    arr = [5, "Limit", 12,"a", "3", 99, 2, [2, 4, 3, "33", "a", "text"], "strong", "broun"]
    arr.flatten!
    int_class = []
    str_class = []

    for i in arr
        if i.class == Integer
            int_class.push(i)
        else i.class == String
            str_class.push(i)
        end
    end
    puts 'result task 5:'
    print int_class , "\n"
    print str_class , "\n\n"
    

end



# 6) Дано рядок із іменами, перетворити їх в масив, в масиві повидаляти лишні пробели, 
# посортувати значення і вивести в новий масив імена які більше 4 символів мають, а в старий масив вивести відсортовані значення і об'єднати їх в рядок
def names_and_names

    names = "Alex,    Orysia, Misha,    Ira     , Paul"
    arr = names.split(",").each{|i| i.strip! }.sort

    new_arr = arr.select{|i| i.length > 4}
    clear_name = arr.join(', ')

    puts 'result task 6:'
    print clear_name ,"\n"
    print new_arr
   
end
sum_positve_numbers
only_string_vlue
remove_pop_digit
digits
many_types
names_and_names