json.array! @ranks do |team|
  json.position @ranks.map(&:id).index(team.id) + 1
  json.logo team.logo.thumb.url
  json.name team.name
  json.score team.total_score
end
