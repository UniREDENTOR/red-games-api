json.array! @teams do |team|
  json.logo team.logo.thumb.url
  json.name team.name
  json.description team.description
  json.leader team.leader
  json.members team.members.delete(' ').split(',').to_a
  json.participations team.participations
end
