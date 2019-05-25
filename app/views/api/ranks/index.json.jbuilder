json.array! @ranks do |team|
  json.logo team.logo.thumb.url
  json.name team.name
  json.score team.total_score
end
