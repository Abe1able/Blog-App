# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
bio_text = "Hello, I'm an experienced professional with a strong background in technology and innovation. Over the years, I have honed my skills in software development, data analysis, and project management. I have a keen eye for detail and a deep passion for solving complex problems through creative solutions. I believe in continuous learning and staying up-to-date with the latest industry trends."

users_data = [
    {name: "Henry Murphy", bio: bio_text, photo: "https://randomuser.me/api/portraits/men/20.jpg"},
    {name: "Bill Meyer", bio: bio_text, photo: "https://randomuser.me/api/portraits/men/21.jpg"},
   ]

posts_data = [
  { title: "The Art of Storytelling", text: "Storytelling is a powerful tool that has been used for centuries to convey messages, entertain, and inspire. Whether it's through books, movies, or oral traditions, stories have the ability to capture our imagination and connect with us on an emotional level. In this blog post, we'll explore the art of storytelling, its history, techniques, and impact on society."},
  { title: "The Science of Happiness", text: "Happiness is a complex and fascinating emotion that plays a significant role in our lives. But what exactly is happiness? How does it affect our well-being, and can it be measured? In this blog post, we'll dive into the science of happiness, exploring the latest research on the topic, the factors that contribute to our happiness, and practical tips on how to cultivate more happiness in our lives."},
]

comments_data = [
    "Great post! I enjoyed reading it and found the content to be informative and engaging.",
    "Interesting insights! Your perspective on the topic is thought-provoking and well-presented.",
    "Well done! Your writing style is captivating, and your ideas are well-organized and coherent.",
    "I appreciate the effort you put into this post. The information provided is valuable and useful.",
    "Awesome blog post! I learned something new and gained a different perspective from reading it.",
    "I love how you addressed the topic in depth. Your research and analysis are evident in your writing.",
    "This is a well-written piece with practical tips and actionable advice. Thank you for sharing!",
    "I found your post to be insightful and well-researched. It's clear that you put a lot of thought into it.",
    "Your writing is engaging and easy to follow. I enjoyed reading your post from start to finish.",
    "Great job! Your post is informative, engaging, and well-structured. Keep up the good work!"
]

# users = []
# posts = []

# users_data.each do |data|
#     users << User.create(data)
# end 

# users.each do |user|
#     posts_data.each do |post|
#         posts << Post.create(user: user, title: post[:title], text: post[:text])
#     end
# end

# posts.each do |post|
#     comments_data.shuffle.each { |text| Comment.create(user: users.sample, post: post, text: text) }
#     rand(1..15).times { Like.create(user: users.sample, post: post) }
# end