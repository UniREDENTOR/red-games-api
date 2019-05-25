json.array! @day.games do |game|
  json.id game.id
  json.name game.name.upcase
  json.description game.description
  json.date @day.date.strftime('%d/%m/%Y')
  json.time game.time.strftime('%H:%I')
  json.locale game.locale
  json.edital game.edital
  json.information game.information
end
