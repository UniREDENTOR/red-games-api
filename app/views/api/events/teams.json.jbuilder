json.array! @teams do |team|
  json.id team.id
  json.logo team.logo.thumb.url
  json.name team.name
  json.avg team.avg_event_score(params[:id])
  json.votes team.votes(params[:id]).count
end
