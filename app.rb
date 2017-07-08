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
    @team = Team.new({:team_name => name, :project_name => project})
    @team.save()
    erb(:success)
  end

  get('/team/:id')do
    @team = Team.find(params.fetch('id'))
    erb(:team)
  end

  get('/team/:id/members/new') do
    @team = Team.find(params.fetch('id').to_i)
    erb(:member_form)
  end

  post('/team/:id/members') do
    full_name = params.fetch('full_name')
    skill = params.fetch('skill')
    @member = Member.new({:full_name => full_name, :skill => skill })
    @member.save
    @team = Team.find(params.fetch('team_id'))
    @team.add_member(@member)
    erb(:team)
  end
