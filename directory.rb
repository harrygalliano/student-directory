student_count = 11
students = [
  {name: "Dr. Hannibal Lecter", cohort: :november},
  {name: "Darth Vader", cohort: :november},
  {name: "Nurse Ratched", cohort: :november},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex DeLarge", cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Krueger", cohort: :november},
  {name: "The Joker", cohort: :november},
  {name: "Joffrey Baratheon", cohort: :november},
  {name: "Norman Bates", cohort: :november}
]
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
def input_students
  puts "please enter the names of the students"
  puts "to finish just hit return twice"
  students = []
  name = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "now we have #{students.count} students"
    name = gets.chomp
  end
students
end
def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)" if student[:name].start_with?("J")
  end
end
students = input_students
print_header
print(students)
print_footer(students)
=begin
here I have made a multi line comment which I am using to show my progress
through the student directory exercises.
8.1 - By adding in {index + 1}. it will show the number index +1 for example,
doctor hanibal lecter would give us a 1, becasue its index number is 0.
8.2 - by adding if student[:name].start_with?("J")to the end of my puts section
this will make it so only names that start with the letter J are putsed, this
would only give Joffrey Baratheon.
=end
