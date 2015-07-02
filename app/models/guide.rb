class Guide < ActiveRecord::Base
  has_many :tags
  has_many :topics, through: :tags
end
