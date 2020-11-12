
Cohort.create(name: "Cohort 1", location: "Austin")
Cohort.create(name: "Cohort 2", location: "San Antonio")
Cohort.create(name: "Cohort 3", location: "Fort Worth")
Cohort.create(name: "Cohort 4", location: "Las Vegas")
Cohort.create(name: "Cohort 5", location: "Dallas")

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Student accounts is for demo presentation
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
demo_student_1 = Student.create!(cohort_id: 1, name: "Gabbi Nguyen", bio: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}", email:"gabbi@flatironschool.com")
    blog1 = Blog.create(date: "#{Faker::Date.between(from: '2018-01-01', to: '2018-03-30')}",
                name: "#{Faker::ProgrammingLanguage.name}" + [" Cheat Sheet", " Hacks", " Tips", " Guide", " For Beginners"].sample,
                content: "#{Faker::Lorem.paragraphs.join(" ")}",
                student_id: demo_student_1.id)
    blog2 = Blog.create(date: "#{Faker::Date.between(from: '2018-01-01', to: '2018-03-30')}",
                name: "#{Faker::ProgrammingLanguage.name}" + [" Cheat Sheet", " Hacks", " Tips", " Guide", " For Beginners"].sample,
                content: "#{Faker::Lorem.paragraphs.join(" ")}",
                student_id: demo_student_1.id)
    video1 = Video.create(name: "HTTP Crash Course & Exploration",
                    date: "#{Faker::Date.between(from: '2018-01-01', to: '2018-03-30')}",
                    url: "https://youtu.be/iYM2zFP3Zn0",
                    description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
                    student_id: demo_student_1.id)
    video2 = Video.create(name: "Parts of an HTTP Request",
                    date: "#{Faker::Date.between(from: '2018-01-01', to: '2018-03-30')}",
                    url: "https://youtu.be/pHFWGN-upGM",
                    description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
                    student_id: demo_student_1.id)
    Like.create!(student_id: demo_student_1.id, blog_id: blog1.id)
    Like.create!(student_id: demo_student_1.id, blog_id: blog2.id)
    Like.create!(student_id: demo_student_1.id, video_id: video1.id)
    Like.create!(student_id: demo_student_1.id, video_id: video2.id)

demo_student_2 = Student.create!(cohort_id: 1, name: "Eric Uberman", bio: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}", email:"eric@flatironschool.com")
    blog3 = Blog.create(date: "#{Faker::Date.between(from: '2018-01-01', to: '2018-03-30')}",
                name: "#{Faker::ProgrammingLanguage.name}" + [" Cheat Sheet", " Hacks", " Tips", " Guide", " For Beginners"].sample,
                content: "#{Faker::Lorem.paragraphs.join(" ")}",
                student_id: demo_student_2.id)
    blog4 = Blog.create(date: "#{Faker::Date.between(from: '2018-01-01', to: '2018-03-30')}",
                name: "#{Faker::ProgrammingLanguage.name}" + [" Cheat Sheet", " Hacks", " Tips", " Guide", " For Beginners"].sample,
                content: "#{Faker::Lorem.paragraphs.join(" ")}",
                student_id: demo_student_2.id)
    video3 = Video.create(name: "Strapi.js Crash Course | Headless CMS",
                date: "#{Faker::Date.between(from: '2018-01-01', to: '2018-03-30')}",
                url: "https://youtu.be/6FnwAbd2SDY",
                description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
                student_id: demo_student_2.id)
    video4 = Video.create(name: "Ruby on Rails - Has Many Associations",
                date: "#{Faker::Date.between(from: '2018-01-01', to: '2018-03-30')}",
                url: "https://youtu.be/DAjfsW4gqGo",
                description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
                student_id: demo_student_2.id)
    Like.create!(student_id: demo_student_2.id, blog_id: blog3.id)
    Like.create!(student_id: demo_student_2.id, blog_id: blog4.id)             
    Like.create!(student_id: demo_student_2.id, video_id: video3.id)
    Like.create!(student_id: demo_student_2.id, video_id: video4.id)

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
[1..5].each do |num|
    5.times do
        test_student = Student.create!(cohort_id: num, name: "#{Faker::Name.name}", bio: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}", email:"#{Faker::Internet.email}")
        blog1 = Blog.create(date: "#{Faker::Date.between(from: '2018-01-01', to: '2018-03-30')}",
                    name: "#{Faker::ProgrammingLanguage.name}" + [" Cheat Sheet", " Hacks", " Tips", " Guide", " For Beginners"].sample,
                    content: "#{Faker::Lorem.paragraphs.join(" ")}",
                    student_id: test_student.id)
        blog2 = Blog.create(date: "#{Faker::Date.between(from: '2018-01-01', to: '2018-03-30')}",
                    name: "#{Faker::ProgrammingLanguage.name}" + [" Cheat Sheet", " Hacks", " Tips", " Guide", " For Beginners"].sample,
                    content: "#{Faker::Lorem.paragraphs.join(" ")}",
                    student_id: test_student.id)
        Like.create!(student_id: test_student.id, blog_id: blog1.id)
        Like.create!(student_id: test_student.id, blog_id: blog2.id)
    end
end
# 5.times do
#     test_student = Student.create!(cohort_id: 1, name: "#{Faker::Name.name}", bio: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}", email:"#{Faker::Internet.email}")
#     blog1 = Blog.create(date: "#{Faker::Date.between(from: '2018-01-01', to: '2018-03-30')}",
#                 name: "#{Faker::ProgrammingLanguage.name}" + [" Cheat Sheet", " Hacks", " Tips", " Guide", " For Beginners"].sample,
#                 content: "#{Faker::Lorem.paragraphs.join(" ")}",
#                 student_id: test_student.id)
#     blog2 = Blog.create(date: "#{Faker::Date.between(from: '2018-01-01', to: '2018-03-30')}",
#                 name: "#{Faker::ProgrammingLanguage.name}" + [" Cheat Sheet", " Hacks", " Tips", " Guide", " For Beginners"].sample,
#                 content: "#{Faker::Lorem.paragraphs.join(" ")}",
#                 student_id: test_student.id)
#     Like.create!(student_id: test_student.id, blog_id: blog1.id)
#     Like.create!(student_id: test_student.id, blog_id: blog2.id)
# end

# 5.times do
#     test_student = Student.create!(cohort_id: 2, name: "#{Faker::Name.name}", bio: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}", email:"#{Faker::Internet.email}")
#     blog1 = Blog.create(date: "#{Faker::Date.between(from: '2018-04-01', to: '2018-06-30')}",
#                 name: "#{Faker::ProgrammingLanguage.name}" + [" Cheat Sheet", " Hacks", " Tips", " Guide", " For Beginners"].sample,
#                 content: "#{Faker::Lorem.paragraphs.join(" ")}",
#                 student_id: test_student.id)
#     blog2 = Blog.create(date: "#{Faker::Date.between(from: '2018-04-01', to: '2018-06-30')}",
#                 name: "#{Faker::ProgrammingLanguage.name}" + [" Cheat Sheet", " Hacks", " Tips", " Guide", " For Beginners"].sample,
#                 content: "#{Faker::Lorem.paragraphs.join(" ")}",
#                 student_id: test_student.id)
#     Like.create!(student_id: test_student.id, blog_id: blog1.id)
#     Like.create!(student_id: test_student.id, blog_id: blog2.id)
# end

# 5.times do
#     test_student = Student.create!(cohort_id: 3, name: "#{Faker::Name.name}", bio: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}", email:"#{Faker::Internet.email}")
#     blog1 = Blog.create(date: "#{Faker::Date.between(from: '2018-07-01', to: '2018-09-30')}",
#                 name: "#{Faker::ProgrammingLanguage.name}" + [" Cheat Sheet", " Hacks", " Tips", " Guide", " For Beginners"].sample,
#                 content: "#{Faker::Lorem.paragraphs.join(" ")}",
#                 student_id: test_student.id)
#     blog2 = Blog.create(date: "#{Faker::Date.between(from: '2018-07-01', to: '2018-09-30')}",
#                 name: "#{Faker::ProgrammingLanguage.name}" + [" Cheat Sheet", " Hacks", " Tips", " Guide", " For Beginners"].sample,
#                 content: "#{Faker::Lorem.paragraphs.join(" ")}",
#                 student_id: test_student.id)
#     Like.create!(student_id: test_student.id, blog_id: blog1.id)
#     Like.create!(student_id: test_student.id, blog_id: blog2.id)
# end

# 5.times do
#     test_student = Student.create!(cohort_id: 4, name: "#{Faker::Name.name}", bio: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}", email:"#{Faker::Internet.email}")
#     blog1 = Blog.create(date: "#{Faker::Date.between(from: '2018-10-01', to: '2018-12-31')}",
#                 name: "#{Faker::ProgrammingLanguage.name}" + [" Cheat Sheet", " Hacks", " Tips", " Guide", " For Beginners"].sample,
#                 content: "#{Faker::Lorem.paragraphs.join(" ")}",
#                 student_id: test_student.id)
#     blog2 = Blog.create(date: "#{Faker::Date.between(from: '2018-10-01', to: '2018-12-31')}",
#                 name: "#{Faker::ProgrammingLanguage.name}" + [" Cheat Sheet", " Hacks", " Tips", " Guide", " For Beginners"].sample,
#                 content: "#{Faker::Lorem.paragraphs.join(" ")}",
#                 student_id: test_student.id)
#     Like.create!(student_id: test_student.id, blog_id: blog1.id,)
#     Like.create!(student_id: test_student.id, blog_id: blog2.id,)
# end

# 5.times do
#     test_student = Student.create!(cohort_id: 5, name: "#{Faker::Name.name}", bio: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}", email:"#{Faker::Internet.email}")
#     blog1 = Blog.create(date: "#{Faker::Date.between(from: '2019-01-01', to: '2019-03-30')}",
#                 name: "#{Faker::ProgrammingLanguage.name}" + [" Cheat Sheet", " Hacks", " Tips", " Guide", " For Beginners"].sample,
#                 content: "#{Faker::Lorem.paragraphs.join(" ")}",
#                 student_id: test_student.id)
#     blog2 = Blog.create(date: "#{Faker::Date.between(from: '2019-01-01', to: '2019-03-30')}",
#                 name: "#{Faker::ProgrammingLanguage.name}" + [" Cheat Sheet", " Hacks", " Tips", " Guide", " For Beginners"].sample,
#                 content: "#{Faker::Lorem.paragraphs.join(" ")}",
#                 student_id: test_student.id)
#     Like.create!(student_id: test_student.id, blog_id: blog1.id,)
#     Like.create!(student_id: test_student.id, blog_id: blog2.id,)
# end

Video.create(name: "Demo of jsTree for Ruby on Rails",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://youtu.be/N2JFnZRs0ec",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 1)
    Like.create!(student_id: 1, video_id: 5)

Video.create(name: "Create a C# Application from Start to Finish - Complete Course",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://youtu.be/wfWxdh-_k_4",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 2)
    Like.create!(student_id: 2, video_id:6)

Video.create(name: "6: How To Create Classes And Objects In C# | C# Tutorial For Beginners | C Sharp Tutorial",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://youtu.be/t2SPg6IuT3k",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 3)
    Like.create!(student_id: 3, video_id: 7)

Video.create(name: "REST API concepts and examples",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://youtu.be/7YcW25PHnAA",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 4)
    Like.create!(student_id: 4, video_id: 8)

Video.create(name: "What is SQL? [in 4 minutes for beginners]",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://youtu.be/27axs9dO7AE",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 5)
    Like.create!(student_id: 5, video_id: 9)

Video.create(name: "HTML, CSS, JavaScript Explained [in 4 minutes for beginners]",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://youtu.be/x5gLL8-M9Fo",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 6)
    Like.create!(student_id: 6, video_id: 10)

Video.create(name: "What are JSON Web Tokens? JWT Auth Explained [Tutorial]",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://youtu.be/x5gLL8-M9Fo",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 7)
    Like.create!(student_id: 7, video_id: 11)

Video.create(name: "Learn JavaScript in 12 Minutes",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://youtu.be/Ukg_U3CnJWI",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 8)
    Like.create!(student_id: 8, video_id: 12)

Video.create(name: "Generating a Hash from Two Arrays in Ruby",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://youtu.be/jbLDUv0-Fbg",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 9)
    Like.create!(student_id: 9, video_id: 13)

Video.create(name: "Difference Between React Native and Native Programming Languages",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://youtu.be/juFD0J5SW4E",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 10)
    Like.create!(student_id: 10, video_id: 14)

Video.create(name: "Ruby On Rails: Model Validations",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://youtu.be/SaCGlchTxLI",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 11)
    Like.create!(student_id: 11, video_id: 15)

Video.create(name: "Rails Sessions, Cookies, and Auth",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://youtu.be/fU-eySc2eTc",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 12)
    Like.create!(student_id: 12, video_id: 16)

Video.create(name: "Learn CSS Grid in 20 Minutes",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://youtu.be/0-DY8J_skZ0",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 13)
    Like.create!(student_id: 13, video_id: 17)

Video.create(name: "React Router Tutorial | React For Beginners",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://youtu.be/Law7wfdg_ls",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 14)
    Like.create!(student_id: 14, video_id: 18)

Video.create(name: "Learn Sass In 20 Minutes | Sass Crash Course",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://youtu.be/Zz6eOVaaelI",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 15)
    Like.create!(student_id: 15, video_id: 19)

Video.create(name: "REACT: useContext Method | JavaScript Tutorial",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://youtu.be/Zz6eOVaaelI",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 16)
    Like.create!(student_id: 16, video_id: 20)

Video.create(name: "Strapi.js Crash Course | Headless CMS",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://youtu.be/6FnwAbd2SDY",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 17)
    Like.create!(student_id: 17, video_id: 21)

Video.create(name: "Ruby on Rails - Has Many Associations",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://youtu.be/DAjfsW4gqGo",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 18)
    Like.create!(student_id: 18, video_id: 22)

Video.create(name: "HTTP Crash Course & Exploration",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://youtu.be/iYM2zFP3Zn0",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 19)
    Like.create!(student_id: 19, video_id: 23)

Video.create(name: "Parts of an HTTP Request",
            date: "#{Faker::Date.between(from: '2018-01-01', to: '2020-10-06')}",
            url: "https://youtu.be/pHFWGN-upGM",
            description: "#{Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false)}",
            student_id: 20)
    Like.create!(student_id: 20, video_id: 24)
