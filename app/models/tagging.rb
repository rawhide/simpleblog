class Tagging < ActiveRecord::Base
  belongs_to :tag
  belongs_to :article, foreign_key: :taggable_id
end

