# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Cohort.create(name: "Cohort 1", 
                location: "#{Faker::Address.city}")

Cohort.create(name: "Cohort 2", 
              location: "#{Faker::Address.city}")

Cohort.create(name: "Cohort 3", 
              location: "#{Faker::Address.city}")

Cohort.create(name: "Cohort 4", 
              location: "#{Faker::Address.city}")

Cohort.create(name: "Cohort 5", 
              location: "#{Faker::Address.city}")


5.times do
    test_student = Student.create!(cohort_id: 1, name: "#{Faker::Name.name}", bio: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}")
    Blog.create(date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
                name: "#{Faker::ProgrammingLanguage.name}" + [" Cheat Sheet", " Hacks", " Tips", " Guide", " For Beginners"].sample,
                content: "#{Faker::Lorem.paragraphs}",
                student_id: test_student.id)
    Blog.create(date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
                name: "#{Faker::ProgrammingLanguage.name}" + [" Cheat Sheet", " Hacks", " Tips", " Guide", " For Beginners"].sample,
                content: "#{Faker::Lorem.paragraphs}",
                student_id: test_student.id)
end

5.times do
    test_student = Student.create!(cohort_id: 2, name: "#{Faker::Name.name}", bio: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}")
    Blog.create(date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
                name: "#{Faker::ProgrammingLanguage.name}" + [" Cheat Sheet", " Hacks", " Tips", " Guide", " For Beginners"].sample,
                content: "#{Faker::Lorem.paragraphs}",
                student_id: test_student.id)
    Blog.create(date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
                name: "#{Faker::ProgrammingLanguage.name}" + [" Cheat Sheet", " Hacks", " Tips", " Guide", " For Beginners"].sample,
                content: "#{Faker::Lorem.paragraphs}",
                student_id: test_student.id)
end

5.times do
    test_student = Student.create!(cohort_id: 3, name: "#{Faker::Name.name}", bio: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}")
    Blog.create(date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
                name: "#{Faker::ProgrammingLanguage.name}" + [" Cheat Sheet", " Hacks", " Tips", " Guide", " For Beginners"].sample,
                content: "#{Faker::Lorem.paragraphs}",
                student_id: test_student.id)
    Blog.create(date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
                name: "#{Faker::ProgrammingLanguage.name}" + [" Cheat Sheet", " Hacks", " Tips", " Guide", " For Beginners"].sample,
                content: "#{Faker::Lorem.paragraphs}",
                student_id: test_student.id)
end

5.times do
    test_student = Student.create!(cohort_id: 4, name: "#{Faker::Name.name}", bio: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}")
    Blog.create(date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
                name: "#{Faker::ProgrammingLanguage.name}" + [" Cheat Sheet", " Hacks", " Tips", " Guide", " For Beginners"].sample,
                content: "#{Faker::Lorem.paragraphs}",
                student_id: test_student.id)
    Blog.create(date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
                name: "#{Faker::ProgrammingLanguage.name}" + [" Cheat Sheet", " Hacks", " Tips", " Guide", " For Beginners"].sample,
                content: "#{Faker::Lorem.paragraphs}",
                student_id: test_student.id)
end

5.times do
    test_student = Student.create!(cohort_id: 5, name: "#{Faker::Name.name}", bio: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}")
    Blog.create(date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
                name: "#{Faker::ProgrammingLanguage.name}" + [" Cheat Sheet", " Hacks", " Tips", " Guide", " For Beginners"].sample,
                content: "#{Faker::Lorem.paragraphs}",
                student_id: test_student.id)
    Blog.create(date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
                name: "#{Faker::ProgrammingLanguage.name}" + [" Cheat Sheet", " Hacks", " Tips", " Guide", " For Beginners"].sample,
                content: "#{Faker::Lorem.paragraphs}",
                student_id: test_student.id)
end


# 10.times do
#     Blog.create(date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
#                 name: "#{Faker::ProgrammingLanguage.name}" + [" Cheat Sheet", " Hacks", " Tips", " Guide", " For Beginners"].sample,
#                 content: "#{Faker::Lorem.paragraphs}",
#                 student_id: 1)
# end

# 5.times do
#     test_student = Student.create!(cohort_id: 4, name: "#{Faker::Name.name}", bio: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}")
#     Blog.create(date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
#                 name: "#{Faker::ProgrammingLanguage.name}" + [" Cheat Sheet", " Hacks", " Tips", " Guide", " For Beginners"].sample,
#                 content: "#{Faker::Lorem.paragraphs}",
#                 student_id: test_student.id)
# end

