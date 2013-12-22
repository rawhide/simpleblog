# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Article.destroy_all
Comment.destroy_all
[
  {user_id: 1, title: "テスト1", body: "ほげほげほげ", pv: 1},
  {user_id: 1, title: "テスト1", body: "ほげほげほげ", pv: 1},
  {user_id: 1, title: "テスト1", body: "ほげほげほげ", pv: 1},
  {user_id: 1, title: "テスト1", body: "ほげほげほげ", pv: 1}
].each_with_index do |article, i|
  a = Article.create article
  i.times do
    Comment.create({article_id: a.id, name: "ほげお#{i}", body: "コメント#{i}"})
  end
end

