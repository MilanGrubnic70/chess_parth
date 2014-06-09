class Game < ActiveRecord::Base
  has_many :participations
  has_many :moves
  has_many :players, through: :participations
  has_many :favorites, as: :favoritible

  after_create :solr_index


  searchable do
    text :event
    text :site
    text :eco_code
    text :date_played

    text :moves do
      moves.map{|move| [move.notation, move.board_position]}
    end

    text :participations do
      participations.map { |p| [p.color, p.result]}
    end

    text :players do
      players.map {|player| player.full_name}
    end
  end
end
