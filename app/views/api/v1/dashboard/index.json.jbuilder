json.user_farms @user_farms.each do |farm|
  json.id farm.id
  json.name farm.name
  json.size farm.size
end