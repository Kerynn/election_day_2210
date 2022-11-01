require 'rspec'
require './lib/candidate'
require './lib/race'

describe Race do
  it 'exists' do
    race = Race.new("Texas Governor")

    expect(race).to be_a(Race)
  end

  it 'has an office for the race' do
    race = Race.new("Texas Governor")

    expect(race.office).to eq("Texas Governor")
  end

  it 'starts with an empty array of candidates' do
    race = Race.new("Texas Governor")

    expect(race.candidates).to eq([])
  end

  describe '#register_candidate!' do
    it 'can add candidate to the candidates array when registered' do
      race = Race.new("Texas Governor")
      candidate1 = race.register_candidate!({name: "Diana D", party: :democrat})

    expect(race.candidates).to eq(candidate1)
  end

    xit 'has attributes of the candidate' do
      race = Race.new("Texas Governor")
      candidate1 = race.register_candidate!({name: "Diana D", party: :democrat})

      expect(candidate1.class).to eq(Candidate)
      expect(candidate1.name).to eq("Diana D")
      expect(candidate1.party).to eq(:democrat)
    end

    it 'can add additional candidates to the candidates array' do
      race = Race.new("Texas Governor")
      candidate1 = race.register_candidate!({name: "Diana D", party: :democrat})
      candidate2 = race.register_candidate!({name: "Roberto R", party: :republican})

      expect(race.candidates).to eq(candidate1)
    end
  end
end
