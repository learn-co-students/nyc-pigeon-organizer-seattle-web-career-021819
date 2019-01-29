def nyc_pigeon_organizer(data)
  new_list = {}
  data.each do |list, hashes|
    hashes.each do |attribute, array|
      array.each do |name|
        if new_list.has_key?(name)
          if new_list[name].has_key?(list)
            new_list[name][list] << attribute.to_s
          else
            new_list[name] = new_list[name].merge({list => [attribute.to_s]})
          end
        else
          new_list[name] = {list => [attribute.to_s]}
        end
      end
    end
  end
  new_list
end
