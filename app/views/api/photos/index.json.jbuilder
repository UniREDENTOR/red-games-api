json.array! @photos do |photo|
  json.url photo.image.url
  json.order photo.order
end
