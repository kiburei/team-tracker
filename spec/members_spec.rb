require('rspec')
require('team')
require('members')
describe(Member) do
  before do
    Member.clear
  end
end

describe('initialize') do
  it('creates new member object') do
    member = Member.new({:full_name => "Minji Minji", :skill => "curving sponsors"})
    expect(member).to(eq(member))
  end
end
