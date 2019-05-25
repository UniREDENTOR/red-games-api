json.array! @days do |day|
  json.id day.id
  json.number @days.map(&:id).index(day.id) + 1
  json.name day.date.strftime('%A')
  json.date day.date.strftime('%d/%m/%Y')
end