# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Article.destroy_all
Comment.destroy_all

#master data
user = User.new(email: "simple@blog.test")
user.password = user.password_confirmation = "hoge1234"
user.save
#test data
unless Rails.env.production?
  [
    {user_id: user.id, title: "テスト1", body: "ほげほげほげ", pv: 1},
    {user_id: user.id, title: "テスト1", body: "ほげほげほげ", pv: 1},
    {user_id: user.id, title: "テスト1", body: "ほげほげほげ", pv: 1},
    {user_id: user.id, title: "テスト1", body: "ほげほげほげ", pv: 1}
  ].each_with_index do |article, i|
    a = Article.create article
    i.times do
      Comment.create({article_id: a.id, name: "ほげお#{i}", body: "コメント#{i}"})
    end
  end
end
