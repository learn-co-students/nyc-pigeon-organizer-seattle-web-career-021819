def nyc_pigeon_organizer(data)
  new_data = {}

  # write your code here!
  data.each do |trait, trait_hash|
    trait_hash.each do |name, pigeons|
      pigeons.each do |pigeon|
        if !new_data.keys.include?(pigeon)
          new_data[pigeon] = {trait => [name.to_s]}
        else
          if new_data[pigeon].keys.include?(trait)
            new_data[pigeon][trait] << name.to_s
          else
            new_data[pigeon][trait] = [name.to_s]
          end
        end
      end
    end
  end

  new_data
end