json.array! @teams do |team|
  json.id team.id
  json.logo team.logo.thumb.url
  json.name team.name
end
