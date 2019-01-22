def nyc_pigeon_organizer(data)
  h1 = {}
  data.each {|first_key, first_values|
    first_values.each {|second_key, second_values|
      h2 = {}
      second_values.each {|name|
        if !h1.has_key?(name)
          h2 = {name => first_key}
          if second_values.include?(name)
            h2[name] = {first_key => [second_key.to_s]}
        end
        elsif second_values.include?(name)
          if h1[name].has_key?(first_key)
            h1[name][first_key] << second_key.to_s
          else
            h2 = {first_key => [second_key.to_s]}
            h2 = h1[name].merge(h2)
            h2 = {name => h2}
          end    
        end
        h1 = h1.merge(h2)
      }
    }
  }
  h1
end