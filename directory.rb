def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end

# Added menu system
def interactive_menu
  students = []
  loop do
    # Print menu to terminal
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"
    # Ask for selection
    selection = gets.chomp
    # Process selection
    case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      exit # Close all and exit
    else
      puts "I don't know what you meant, try again"
    end
  end
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

interactive_menu
print_header
print(students)
print_footer(students)
=begin
here I have made a multi line comment which I am using to show my progress
through the student directory exercises.
8.1 - By adding in {index + 1}. it will show the number index +1 for example,
doctor hanibal lecter would give us a 1, becasue its index number is 0.
8.2 - By adding if student[:name].start_with?("J")to the end of my puts section
this will make it so only names that start with the letter J are putsed, this
would only give Joffrey Baratheon.
8.3 - By using if student[:name].size < 12 only names shoter than 12 characters
will be returned.
=end
