# - спробувати зробити конкатенацію масиву всередині інтерполяції
array = ["one", "two", "three"]
numb = [1, 2, 3]
print "The array contains the elements: #{array.join(", ")}

"
print "#{array+numb}

"
#  - визначити кількість входжень літери "а" в рядку.
str = "In my country we put our name first when we write it or when we say it, but in some official documents we have our names written at the end and the last-name first"
puts str.count('a') 
 puts

# - із тексту наведеного вище, створити масив із слів, які повторюються
str_array = str.split
uq_array = []
str_array.each {|i| uq_array.push(i) if str_array.count(i)>1 }
print uq_array ,"\n\n"


# - зробити кожне слово в тексті щоб починалось із великої літери

cap_str = str_array.map{|item| item.capitalize}.join(' ')
print cap_str, "\n\n"


# - зробити із наведеного тексту масив, через розділювач кому.
# Якшо використати str.split(',') , то отримаємо масив з двома рядками по 10+ слів в кожному
a= str.split(',')
print a , "\n\n"          # *Якшо відразу виводити  print str.split(',') , то отримаємо по суті рядки при виведені, а якшо оголосити окрему змінну то отрмаєм масив []


# Но можна просто str.split() Тоді видасть ["In", "my", "country", ітак далі]
# І перетоворити масив в текст, де замість ',' будуть '...' можна наступним чином. * Але він всеодно не забирає ту єдину кому що була на початку
a_1 =[]
str.split().each{|x| a_1.push(x, '...') }
#print a_1.join() ,"\n\n"


#a_2 = str.char
#a_2.each_index {|x| a_2[x].replace("...") if a_2[x] = ","  }  

#print a_2
# - перетворити масив в текст, і щоб на місці де була кома стояла трикрамка(...)

print str.gsub(",","...")

# - згенерувати масив із 10 елементів, і засетити туда сьогоднішню дату.

furniture = ['chair', 'table', 'desk', 'wardrobe', 'lamp', 'chair', 'table', 'desk', 'lamp' ,"#{Time.now}" ]
print furniture, "\n"

# - використати метод uniq для згенерованого масиву, після чого викликати масив(чи зміниться значення масиву?) 

print furniture.uniq