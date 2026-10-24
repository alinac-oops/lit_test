user_data = { name: 'Гість' } # Змінено user_inf на user_data, щоб збігалося з кодом нижче

film = [
  {
    id: "mike",
    name_pizza: "Майкл",
    price: 165,
    time: "2 год 35 хв (155 хв)",
    type: 500,
    include: "Біографія, drama, музика"
  },
  {
    id: "spider",
    name_pizza: "Людина-павук: абсолютно новий день",
    price: 165,
    time: "2 год 10 хв (130хв)",
    weight: 650,
    include: "Фантастика, екшн, пригоди"
  },
  {
    id: "odesea",
    name_pizza: "Одіссея",
    price: 165,
    time: "2год 2 хв (122 хв)" ,
    weight: 600,
    include: "Біографія, драма,пригоди"
  },
  {
    id: "disI3",
    name_pizza: "Нікчемний Я 3",
    price: 165,
    time: "1 год 30хв (90 хв)",
    weight: 600,
    include: "Анімація, комедія, сімейний та пригоди"
  },
  {
    id: "potrul",
    name_pizza: "Щенячий патруль",
    price: 165,
    time: "1 год 32 хв (92 хв)",
    weight: 600,
    include: "Анфмація, фантастика, пригоди та сімейний"
  }
] 

puts 'Вітаємо в кінотеатрі'
puts '"Для тих хто не любить дивитися на телефоні"!'
puts ''

while user_data[:menu] != "5"  
  puts "Привіт, #{user_data[:name]}!"
  if user_data[:promo]
    puts " Промокод:#{user_data[:promo]}"
  end
  puts 'Оберіть дію та введіть її номер:'
  puts "1. Реєстрація"
  puts '2. Зараз в кіно...'
  puts '3. Забронювати квиток'
  puts '4. Попкорн'
  puts '5. Втекти'

  user_data[:menu] = gets.chomp

  if user_data[:menu] == "back"
    puts "Повернення..." 
  elsif user_data[:menu] == "1"
    puts 'Як Вас звати? (back - у головне меню)'
    user_data[:name] = gets.chomp 
    puts ''
    puts "Ваше ім'я зареєстровано - #{user_data[:name]}" unless user_data[:name].downcase == "back"     
    puts ''
  elsif user_data[:menu] == "5"
    puts 'Дякуємо, що зайшли подивитися на наші ціни!'
    break
  end
end 
