class Tag < ActiveRecord::Base
  belongs_to :guide
  belongs_to :topic
end
