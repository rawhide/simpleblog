##
# = 記事モデル
#
class Article < ActiveRecord::Base
  has_many :comments

  def read!
    self.pv += 1
    self.save!
    self
  end
end
