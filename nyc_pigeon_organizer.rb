# require 'pry'

def nyc_pigeon_organizer(data)
  data.each_with_object({}) do |(key, h), result|
    # result is the memo???
    #=> key=:color, h={hash of color keys & array of names}, result={}

    h.each do |value, names|
    #=> value=:purple, names=["Theo", "Peter Jr.", "Lucky"]
      names.each do |name|
      #=> "Theo"
        result[name] ||= {}
        #=> {"Theo"=>{}}
        # creats a new hash for this instance of pigeon (by name)
        result[name][key] ||= []
        #=> {"Theo"=>{:color=>[]}}
        # takes value (in 1st instance, :color) of a pigeon and creates an array specific colors
        result[name][key] << value.to_s
        #=> {"Theo"=>{:color=>["purple"]}}
        # pushes in the key's values (in 1st instance, just purple) into an array, which must be a string b/c .each_with_object requires memo (here called result) to be a string
      end
    end
  end
end
