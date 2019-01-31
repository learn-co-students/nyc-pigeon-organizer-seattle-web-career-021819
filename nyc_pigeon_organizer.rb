require 'pry'

def nyc_pigeon_organizer(data)
pigeon_list = {}

  data.each do |general_cat, info|
    info.each do |detail, list_of_names|
      list_of_names.each do |name|

        if pigeon_list[name] == nil
          pigeon_list[name] = {}
        end

        if
          pigeon_list[name][general_cat] == nil
          pigeon_list[name][general_cat] = []
        end

        if pigeon_list[name][general_cat].include?(detail)
          #
        else
             pigeon_list[name][general_cat] << detail.to_s
           end
         end
       end
     end
     pigeon_list
   end
