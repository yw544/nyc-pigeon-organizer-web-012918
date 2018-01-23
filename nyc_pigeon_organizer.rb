def nyc_pigeon_organizer(data)
  # write your code here!
  open_hash = {}
  data.each do |type, info|
    info.each do |attributes, names|
      names.each do |name|
        if open_hash.include?(name)
          if open_hash[name].include?(type)
            open_hash[name][type].push(attributes.to_s)
          else
            open_hash[name][type] = [attributes.to_s]
end
else
  open_hash[name] = {type => [attributes.to_s]}
end
end
end
end
open_hash
end
