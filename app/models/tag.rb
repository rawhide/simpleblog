class Tag < ActiveRecord::Base
  has_many :articles, through: :taggings, foreign_key: :tag_id
  has_many :taggings

  def self.to_opt
    self.all.map { |tag| [tag.name, tag.name] }
  end
end
