def nyc_pigeon_organizer(hash)
  new_hash = {}
              hash.each do |attributes,values|
                values.each do |colors, names_array|
                  names_array.each do |name|
                    if !new_hash.has_key?(name)
                      new_hash[name] =  {}
                    end
                  end
                end
              end
             hash.each do|attributes,values|
              values.each do |colors, names_array|
                names_array.each do |name|
                 new_hash.each do |name_keys, hashes|
                   if name == name_keys
                     if !hashes[attributes]
                        hashes[attributes] =  [] << colors.to_s
                      else
                        hashes[attributes] << colors.to_s
                      end
                   end
                 end
               end
             end
        end
      return new_hash
end
