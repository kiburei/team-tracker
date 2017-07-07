require('rspec')
require('team')
require('members')
describe(Member) do
  before do
    Member.clear
  end
end

describe('#initialize') do
  it('creates new member object') do
    member = Member.new({:full_name => "Minji Minji", :skill => "curving sponsors"})
    expect(member).to(eq(member))
  end
end

describe('#attr_reader') do
  it('access attribute of object using atribute reader') do
      member = Member.new({:full_name => "Minji Minji", :skill => "curving sponsors"})
      expect(member.skill).to(eq('curving sponsors'))
  end
end

describe('#fetch all objects') do
  it('returns all members') do
    member = Member.new({:full_name => "Minji Minji", :skill => "curving sponsors"})
    member.save
    expect(Member.all).to(eq([member]))
  end
end
