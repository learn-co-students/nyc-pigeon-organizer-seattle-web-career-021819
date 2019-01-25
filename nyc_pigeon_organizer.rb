require "pry"

# extract a list of names from the pigeon_list data hash
# and return them as an array
# (use each name in the array as a key for hash_output)
def name_lister(data)
  pigeon_hash = data
  array_output = []
  pigeon_hash.each_value do |attribute_hash|
    attribute_hash.each_value do |name_array|
      name_array.each do |name_string|
        array_output << name_string
      end
    end
  end
  final_array_output = array_output.uniq
end


def nyc_pigeon_organizer(data)

  # initialize objects
  pigeon_hash = data
  hash_output = {}
  attribute_array = data.keys
  name_array = name_lister(data)

  # create keys for each attribute for each Bird Name string
  name_array.each do |pigeon_name|
    hash_output[pigeon_name] = {}
    attribute_array.each do |attribute|
      hash_output[pigeon_name][attribute] = []
    end
  end

  # ITERATE OVER THE NEW HASH FOR EACH NAME, THEN
  # iterate over original Data hash to find
  # matches between Bird Name and Attribute
  # to add to the Attribute(key) array(value)
  hash_output.each_key do |bird_name|
    pigeon_hash.each do |attribute_key, attribute_hash|
      attribute_hash.each do |attr_option_key, pigeon_name_array|
        if pigeon_name_array.include?(bird_name)
          string_temp = attr_option_key.to_s
          hash_output[bird_name][attribute_key] << string_temp
        end
      end
    end
  end

  # return the hash_output
  hash_output

end
