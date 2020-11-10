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

Video.create(name: "Demo of jsTree for Ruby on Rails",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://www.youtube.com/watch?v=N2JFnZRs0ec&ab_channel=LuciusChoi",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 1)

Video.create(name: "Create a C# Application from Start to Finish - Complete Course",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://www.youtube.com/watch?v=wfWxdh-_k_4&ab_channel=freeCodeCamp.org",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 2)

Video.create(name: "6: How To Create Classes And Objects In C# | C# Tutorial For Beginners | C Sharp Tutorial",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://www.youtube.com/watch?v=t2SPg6IuT3k&ab_channel=DaniKrossing",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 3)

Video.create(name: "REST API concepts and examples",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://www.youtube.com/watch?v=7YcW25PHnAA&ab_channel=WebConcepts",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 4)

Video.create(name: "What is SQL? [in 4 minutes for beginners]",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://www.youtube.com/watch?v=27axs9dO7AE&ab_channel=DanielleTh%C3%A9",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 5)

Video.create(name: "HTML, CSS, JavaScript Explained [in 4 minutes for beginners]",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://www.youtube.com/watch?v=gT0Lh1eYk78&ab_channel=DanielleTh%C3%A9",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 6)

Video.create(name: "What are JSON Web Tokens? JWT Auth Explained [Tutorial]",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://www.youtube.com/watch?v=x5gLL8-M9Fo&ab_channel=freeCodeCamp.org",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 7)

Video.create(name: "Learn JavaScript in 12 Minutes",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://www.youtube.com/watch?v=Ukg_U3CnJWI&ab_channel=JakeWright",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 8)

Video.create(name: "Generating a Hash from Two Arrays in Ruby",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://www.youtube.com/watch?v=jbLDUv0-Fbg&ab_channel=edutechional",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 9)

Video.create(name: "Difference Between React Native and Native Programming Languages",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://www.youtube.com/watch?v=juFD0J5SW4E&ab_channel=edutechional",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 10)

Video.create(name: "Ruby On Rails: Model Validations",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://www.youtube.com/watch?v=SaCGlchTxLI&ab_channel=AppleJuiceTeaching",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 11)

Video.create(name: "Rails Sessions, Cookies, and Auth",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://www.youtube.com/watch?v=fU-eySc2eTc&ab_channel=LynTeaches",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 12)

Video.create(name: "Learn CSS Grid in 20 Minutes",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://www.youtube.com/watch?v=0-DY8J_skZ0&ab_channel=codeSTACKr",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 13)

Video.create(name: "React Router Tutorial | React For Beginners",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://www.youtube.com/watch?v=Law7wfdg_ls&ab_channel=DevEd",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 14)

Video.create(name: "Learn Sass In 20 Minutes | Sass Crash Course",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://www.youtube.com/watch?v=Zz6eOVaaelI&ab_channel=DevEd",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 15)

Video.create(name: "REACT: useContext Method | JavaScript Tutorial",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://www.youtube.com/watch?v=7oUgdZjoPe0&ab_channel=MarinaKim",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 16)

Video.create(name: "Strapi.js Crash Course | Headless CMS",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://www.youtube.com/watch?v=6FnwAbd2SDY&ab_channel=TraversyMedia",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 17)

Video.create(name: "Ruby on Rails - Has Many Associations",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://www.youtube.com/watch?v=DAjfsW4gqGo&ab_channel=AppleJuiceTeaching",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 18)

Video.create(name: "HTTP Crash Course & Exploration",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://www.youtube.com/watch?v=iYM2zFP3Zn0&ab_channel=TraversyMedia",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 19)

Video.create(name: "Parts of an HTTP Request",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://www.youtube.com/watch?v=pHFWGN-upGM&ab_channel=Udacity",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 20)
