TAGS = %W(cool funny stupid sexy amazing scary)

tag_objects = TAGS.map{|tag_name| Tag.create(name: tag_name)}

10.times do
  post = Post.create(title: Faker::Lorem.words(4..6).join(" "),
              body: Faker::Lorem.sentences(6..8).join(" "))
  tag_objects.sample([1,2,3].sample).each do |tag|
    post.tags << tag
  end
end

