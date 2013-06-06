NAMES = %w(Matt John Jimmy Carla Adam Ricky)

NAMES.length.times do |i|
  Note.create(title:"#{NAMES[i]}'s birthday", content: "Buy a great gift")
end

