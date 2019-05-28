class RatingChange < ActiveRecord::Base
  belongs_to :player
  belongs_to :result, touch: true
end
