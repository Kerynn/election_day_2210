class Election
  attr_reader :year,
              :races,
              :candidates_registering,
              :vote

  def initialize(year)
    @year = year
    @races = []
    @candidates_registering = []
    @vote = 0
  end

  def add_race(race)
    @races << race
  end

  def candidates
    candidate = Candidate.new(candidate_hash)
    @candidates_registering << @races.map do |race|
      race.register_candidate!(candidate)
    end
  end

  def vote_for!
    vote += 1
  end

  def vote_counts
    candidates.map do |candidate|
      candidate[:name] = (vote_for!)
    end
  end
end
