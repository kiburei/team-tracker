class Team
  attr_reader(:team_name, :project_name)

  define_method(:initialize) do |attributes|
    @team_name = attributes.fetch(:team_name)
    @project_name = attributes.fetch(:project_name)
  end

end
