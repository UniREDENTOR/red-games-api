json.array! @teams do |team|
  json.id team.id
  json.logo team.logo.thumb.url
  json.name team.name
  json.avg team.avg_event_score
end
