require('sinatra')
  require('sinatra/reloader')
  also_reload('./lib**/*.rb')
  require('./lib/team')
  require('./lib/members')

  get('/')do
    erb(:index)
  end

  get('/teams/new')do
    erb(:team_form)
  end

  post('/team') do
    name = params.fetch('team_name')
    project = params.fetch('project_name')
    team = Team.new({:team_name=> "Toyota", :project_name => "Prius"})
    team.save()
    erb(:success)
  end
