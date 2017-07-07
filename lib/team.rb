class Team
  @@team = []
  attr_reader(:team_name, :project_name, :id)

  define_method(:initialze) do |attributes|
    @team_name = attributes.fetch(:team_name)
    @project_name = attributes.fetch(:project_name)
    @id = @@team.length.+(1)
  end

  define_singleton_method(:all) do
    @@team
  end

end
