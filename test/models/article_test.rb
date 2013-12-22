require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test ".read!でPvがインクリメントされること" do
    subject = FactoryGirl.create :article
    assert_equal 0, subject

    subject.read!
    assert_equal 1, subject
  end
end
