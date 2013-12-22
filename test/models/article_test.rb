require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test ".read!でPvがインクリメントされること" do
    subject = create :article
    assert_equal 0, subject.pv

    subject.read!

    assert_equal 1, subject.pv
  end
end
