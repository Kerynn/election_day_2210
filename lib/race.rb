class Race
  attr_reader :office,
              :candidates

  def initialize(office)
    @office = office
    @candidates = []
  end

  def register_candidate!(candidate)
   candidate_class = @candidates.map do |race|
    candidate = Candidate.new(candidate)
   end
  end
end
