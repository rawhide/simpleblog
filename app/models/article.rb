##
# = 記事モデル
#
class Article < ActiveRecord::Base

  def read!
    self.pv += 1
    self.save!
  end
  
end
