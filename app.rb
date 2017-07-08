require('sinatra')
  require('sinatra/reloader')
  also_reload('./lib**/*.rb')
  require('./lib/team')
  require('./lib/members')

  get('/')do
    @teams = Team.all
    erb(:index)
  end

  get('/teams/new')do
    erb(:team_form)
  end

  post('/team') do
    name = params.fetch('team_name')
    project = params.fetch('project_name')
    @team = Team.new({:team_name=> name, :project_name => project})
    @team.save()
    erb(:success)
  end

  get('/team/:id')do
    @team = Team.find(params.fetch('id'))
    erb(:team)
  end

  get('/members/new') do
    erb(:member_form)
  end
