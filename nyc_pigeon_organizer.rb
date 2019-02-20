def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |info, options|
    options.each do |option, names|
      names.each do |names|
        new_hash[names] ||= {}
        new_hash[names][info] ||= []
        new_hash[names][info] << option.to_s 
      end
    end
  end
  new_hash
end