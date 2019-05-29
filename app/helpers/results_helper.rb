module ResultsHelper
  def player_options
    Player.order("name ASC").all.map { |player| [player.name, player.id] }
  end

  def amount_class(value)
    value.positive? ? "positive" : "negative"
  end
end
