class RatingHistoryEvent < ActiveRecord::Base
  belongs_to :rating
  belongs_to :result

  scope :events, -> (player, game) do
    includes(:rating)
    .where(ratings: { player_id: player, game_id: game })
  end
end
