class Tag < ActiveRecord::Base
  has_many :articles
  has_many :taggings
end
