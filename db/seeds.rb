
10.times do
  Post.create(title: Faker::Lorem.words(4..6).join(" "),
              body: Faker::Lorem.sentences(6..8).join(" "))
end

