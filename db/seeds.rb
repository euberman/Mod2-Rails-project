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

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Student accounts is for demo presentation
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
demo_student_1 = Student.create!(cohort_id: 1, name: "Gabbi Nguyen", bio: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}", email:"gabbi@flatironschool.com")
    Blog.create(date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
                name: "#{Faker::ProgrammingLanguage.name}" + [" Cheat Sheet", " Hacks", " Tips", " Guide", " For Beginners"].sample,
                content: "#{Faker::Lorem.paragraphs}",
                student_id: demo_student_1.id)
    Blog.create(date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
                name: "#{Faker::ProgrammingLanguage.name}" + [" Cheat Sheet", " Hacks", " Tips", " Guide", " For Beginners"].sample,
                content: "#{Faker::Lorem.paragraphs}",
                student_id: demo_student_1.id)
    Video.create(name: "HTTP Crash Course & Exploration",
                    date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
                    url: "https://youtu.be/iYM2zFP3Zn0",
                    description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
                    student_id: demo_student_1.id)
    Video.create(name: "Parts of an HTTP Request",
                    date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
                    url: "https://youtu.be/pHFWGN-upGM",
                    description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
                    student_id: demo_student_1.id)

demo_student_2 = Student.create!(cohort_id: 1, name: "Eric Uberman", bio: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}", email:"eric@flatironschool.com")
    Blog.create(date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
                name: "#{Faker::ProgrammingLanguage.name}" + [" Cheat Sheet", " Hacks", " Tips", " Guide", " For Beginners"].sample,
                content: "#{Faker::Lorem.paragraphs}",
                student_id: demo_student_2.id)
    Blog.create(date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
                name: "#{Faker::ProgrammingLanguage.name}" + [" Cheat Sheet", " Hacks", " Tips", " Guide", " For Beginners"].sample,
                content: "#{Faker::Lorem.paragraphs}",
                student_id: demo_student_2.id)
    Video.create(name: "Strapi.js Crash Course | Headless CMS",
                date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
                url: "https://youtu.be/6FnwAbd2SDY",
                description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
                student_id: demo_student_2.id)
    Video.create(name: "Ruby on Rails - Has Many Associations",
                date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
                url: "https://youtu.be/DAjfsW4gqGo",
                description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
                student_id: demo_student_2.id)
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

5.times do
    test_student = Student.create!(cohort_id: 1, name: "#{Faker::Name.name}", bio: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}", email:"#{Faker::Internet.email}")
    Blog.create(date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
                name: "#{Faker::ProgrammingLanguage.name}" + [" Cheat Sheet", " Hacks", " Tips", " Guide", " For Beginners"].sample,
                content: "#{Faker::Lorem.paragraphs}",
                student_id: test_student.id)
    blog2 = Blog.create(date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
                name: "#{Faker::ProgrammingLanguage.name}" + [" Cheat Sheet", " Hacks", " Tips", " Guide", " For Beginners"].sample,
                content: "#{Faker::Lorem.paragraphs}",
                student_id: test_student.id)
end

5.times do
    test_student = Student.create!(cohort_id: 2, name: "#{Faker::Name.name}", bio: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}", email:"#{Faker::Internet.email}")
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
    test_student = Student.create!(cohort_id: 3, name: "#{Faker::Name.name}", bio: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}", email:"#{Faker::Internet.email}")
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
    test_student = Student.create!(cohort_id: 4, name: "#{Faker::Name.name}", bio: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}", email:"#{Faker::Internet.email}")
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
    test_student = Student.create!(cohort_id: 5, name: "#{Faker::Name.name}", bio: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}", email:"#{Faker::Internet.email}")
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
            url: "https://youtu.be/N2JFnZRs0ec",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 1)

Video.create(name: "Create a C# Application from Start to Finish - Complete Course",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://youtu.be/wfWxdh-_k_4",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 2)

Video.create(name: "6: How To Create Classes And Objects In C# | C# Tutorial For Beginners | C Sharp Tutorial",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://youtu.be/t2SPg6IuT3k",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 3)

Video.create(name: "REST API concepts and examples",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://youtu.be/7YcW25PHnAA",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 4)

Video.create(name: "What is SQL? [in 4 minutes for beginners]",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://youtu.be/27axs9dO7AE",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 5)

Video.create(name: "HTML, CSS, JavaScript Explained [in 4 minutes for beginners]",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://youtu.be/x5gLL8-M9Fo",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 6)

Video.create(name: "What are JSON Web Tokens? JWT Auth Explained [Tutorial]",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://youtu.be/x5gLL8-M9Fo",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 7)

Video.create(name: "Learn JavaScript in 12 Minutes",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://youtu.be/Ukg_U3CnJWI",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 8)

Video.create(name: "Generating a Hash from Two Arrays in Ruby",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://youtu.be/jbLDUv0-Fbg",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 9)

Video.create(name: "Difference Between React Native and Native Programming Languages",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://youtu.be/juFD0J5SW4E",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 10)

Video.create(name: "Ruby On Rails: Model Validations",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://youtu.be/SaCGlchTxLI",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 11)

Video.create(name: "Rails Sessions, Cookies, and Auth",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://youtu.be/fU-eySc2eTc",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 12)

Video.create(name: "Learn CSS Grid in 20 Minutes",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://youtu.be/0-DY8J_skZ0",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 13)

Video.create(name: "React Router Tutorial | React For Beginners",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://youtu.be/Law7wfdg_ls",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 14)

Video.create(name: "Learn Sass In 20 Minutes | Sass Crash Course",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://youtu.be/Zz6eOVaaelI",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 15)

Video.create(name: "REACT: useContext Method | JavaScript Tutorial",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://youtu.be/Zz6eOVaaelI",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 16)

Video.create(name: "Strapi.js Crash Course | Headless CMS",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://youtu.be/6FnwAbd2SDY",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 17)

Video.create(name: "Ruby on Rails - Has Many Associations",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://youtu.be/DAjfsW4gqGo",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 18)

Video.create(name: "HTTP Crash Course & Exploration",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://youtu.be/iYM2zFP3Zn0",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 19)

Video.create(name: "Parts of an HTTP Request",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://youtu.be/pHFWGN-upGM",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 20)
