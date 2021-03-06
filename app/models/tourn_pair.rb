class TournPair < ActiveRecord::Base
  attr_accessible :tournament_id, :p1_id, :p2_id, :pos, :roundof, :winner_id,
                  :winners, :undecided

  belongs_to :tournament
  has_many :tourn_matches

  ## note about undecided:
  ## -1: no player undecided
  ## 0: left player undecided
  ## 1: right player undecided
  ## 2: both players undecided

  def p1_name
    TournUser.find(self.p1_id).user.name
  end

  def p2_name
    TournUser.find(self.p2_id).user.name
  end
end
