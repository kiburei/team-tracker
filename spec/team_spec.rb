require('rspec')
require('team')
require('members')
describe(Team) do
  before do
    Team.clear
  end
end
describe('#team') do
  it('returns the team object') do
    test_team = Team.new({:team_name => "A Team", :project_name => "Minji"})
    expect(test_team.team_name).to(eq('A Team'))
  end
end
