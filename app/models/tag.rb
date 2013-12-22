class Tag < ActiveRecord::Base
  has_many :articles, through: :taggings, foreign_key: :tag_id
  has_many :taggings
end
