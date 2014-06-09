class Participation < ActiveRecord::Base
  belongs_to :player
  belongs_to :game

  # searchable do
  #   text :players do
  #     players.map { |player| player.name } ####
  #   end

    ### ICEBOXED UNTIL WE KNOW THIS WORKS ####
    # text :color, :result, :rating ####
    # text :games do
    #   games.map {|game| game.eco_code}
    #   games.map {|game| game.site} ####
    #   games.map {|game| game.event}
    #   games.map {|game| game.date_played}  ####
    # end
  # end
end
