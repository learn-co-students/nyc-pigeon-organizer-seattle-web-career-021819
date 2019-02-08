def nyc_pigeon_organizer(data)
    rev_pigeon_data = {}
  #step 1: get all keys into hash by combining all uniq.values in color hash
    key_array = data[:color].values.flatten #create array of keys
  #step 2: iterate through array to put keys in new hash
    rev_pigeon_data = Hash[key_array.collect {|item| [item, {}] } ]
  #step 3: create correct array construct in new hash
    rev_pigeon_data.each do |k, v|
        v[:color] = []
        v[:gender] = []
        v[:lives] = []
    end

  #step 4:create a way to say: anytime OLD contains a value that is NEW key, then I want to OLD KEY to become NEW VALUE

      data.each do |key, value|
        value.each do |key2, value2|
          value2.each do |name|
            rev_pigeon_data.each do |name2, value3|
              if name2 == name
                value3.each do |key3, value4|
                  if key3 == key
                    rev_pigeon_data[name][key3].push(key2.to_s)
                  end
                end
              end
            end
          end
        end
      end
  rev_pigeon_data
end
