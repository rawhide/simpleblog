require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test "関連のテスト" do
    article = FactoryGirl.create :article, :has_comments
    assert_equal 1, article.comments.count
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
