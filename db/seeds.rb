# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


5.times do
    Cohort.create(name: "Cohort #{Faker::Number.between(from: 1, to: 5)}", 
                  location: "#{Faker::Address.city}")
end


5.times do
    Student.create(cohort_id: 1,
                   name: "#{Faker::Name.name}", 
                   bio: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}") 
end


5.times do
    Student.create(cohort_id: 2,
                   name: "#{Faker::Name.name}", 
                   bio: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}") 
end

5.times do
    Student.create(cohort_id: 3,
                   name: "#{Faker::Name.name}", 
                   bio: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}") 
end

5.times do
    Student.create(cohort_id: 4,
                   name: "#{Faker::Name.name}", 
                   bio: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}") 
end

5.times do
    Student.create(cohort_id: 5,
                   name: "#{Faker::Name.name}", 
                   bio: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}") 
end

# 60.times do
#     Blog.create(date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
#                 name: "#{Faker::ProgrammingLanguage.name}" + ["Cheat Sheet", "Hacks", "Tips", "Guide", "For Beginners"].sample,
#                 content: "#{Faker::Lorem.paragraphs}",
#                 student_id: (1...20).sample)
# end

# 20 times.do 
#     Video.create 
