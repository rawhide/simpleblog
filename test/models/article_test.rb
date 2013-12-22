require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test "関連のテスト" do
    article = FactoryGirl.create :article, :has_comments
    assert_equal 1, article.comments.count
  end

  test "scope top_ten" do
    create :article, title: "name1", pv: 1
    create :article, title: "name2", pv: 2
    create :article, title: "name3", pv: 3

    assert_equal "name1", Article.top_ten[2].title
    assert_equal "name2", Article.top_ten[1].title
    assert_equal "name3", Article.top_ten[0].title
  end

  test "バリデーションのテスト" do
    article = FactoryGirl.build :article
    assert article.valid?

    article.title = nil
    refute article.valid?

    article.title = "hoge"
    article.body = nil
    refute article.valid?
  end

  test ".read!でPvがインクリメントされること" do
    subject = create :article
    assert_equal 0, subject.pv

    subject.read!

    assert_equal 1, subject.pv
  end
end
