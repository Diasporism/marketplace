class Topic < ActiveRecord::Base
  has_many :tags
  has_many :guides, through: :tags
  belongs_to :discipline
end
