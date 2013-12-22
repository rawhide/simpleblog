require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test "関連のテスト" do
    article = FactoryGirl.create :article, :has_comments
    assert_equal 1, article.comments.count
  end
end
