##
# = 記事モデル
#
class Article < ActiveRecord::Base
  acts_as_taggable

  def read!
    self.pv += 1
    self.save!
    self
  end

end
