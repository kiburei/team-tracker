class Team
  @@teams = []
  attr_reader(:team_name, :project_name, :id)

  define_method(:initialize) do |attributes|
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

  define_singleton_method(:find) do |id|
    team = nil
    @@teams.each do |team|
      if team.id.eql?(id.to_i)
        team = team
      end
      team
    end
  end

end
