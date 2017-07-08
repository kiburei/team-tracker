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

describe('#save') do
  it('pushes new object to array') do
    test_team = Team.new({:team_name => "Timbuktu", :project_name => "Gold"})
    test_team.save
    expect(Team.all).to(eq([test_team]))
  end
end

describe('#clear') do
  it('clears the entire class objects') do
    expect(Team.clear).to(eq([]))
  end
end

describe('#id') do
  it('assigns a unique id to new object') do
    test_team = Team.new({:team_name => "Timbuktu", :project_name => "Gold"})
    test_team.save
    expect(test_team.id).to(eq(1))
  end
end

describe('#find') do
  it('return team by its id') do
    test_team = Team.new({:team_name => "Timbuktu", :project_name => "Gold"})
    test_team.save
    find_team = Team.new({:team_name => "Go Rockets", :project_name => "TNT"})
    find_team.save
    expect(Team.find(find_team.id)).to(eq(find_team))
  end
end

describe('#add_member')do
  it('adds new member to team') do
    test_team = Team.new({:team_name => "Timbuktu", :project_name => "Gold"})
    test_member = Member.new({:full_name => "Minji Minji", :skill => "curving sponsors"})
    test_team.add_member(test_member)
    expect(test_team.members).to(eq([test_member]))
  end
end
