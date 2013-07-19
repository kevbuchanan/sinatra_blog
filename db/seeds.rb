require 'faker'
user = User.create(name:'JohnDoe', email:'john@john.com', password:'johnd', password_confirmation:'johnd')
65.times do
  creator = [user.id, nil, nil, nil].sample
  tags = Array.new(rand(3..5)) { Tag.find_or_create_by_title(Faker::Company.buzzwords.sample)}
  Post.create(title: Faker::Lorem.words.join(' ').capitalize, body: Faker::Lorem.paragraphs.join(' '), tags: tags, user_id: creator)
end
