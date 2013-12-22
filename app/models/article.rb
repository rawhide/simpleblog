##
# = 記事モデル
#
class Article < ActiveRecord::Base
  has_many :comments
  acts_as_taggable

  validates :title, presence: true
  validates :body, presence: true

  def read!
    self.pv += 1
    self.save!
    self
  end
end
