class Team
  @@teams = []
  attr_reader(:team_name, :project_name, :id, :members)

  define_method(:initialize) do |attributes|
    @members = []
    @team_name = attributes.fetch(:team_name)
    @project_name = attributes.fetch(:project_name)
    @id = @@teams.length.+(1)
  end

  define_singleton_method(:all) do
    @@teams
  end

  define_method(:save) do
    @@teams.push(self)
  end

  define_singleton_method(:clear) do
    @@teams = []
  end

  define_singleton_method(:find) do |team_id|
    search_team = nil
    @@teams.each do |team|
      if team.id == team_id.to_i
        search_team = team
      end
    end
    search_team
  end

  define_method(:add_member)do |member|
      @members.push(member)
  end

end
