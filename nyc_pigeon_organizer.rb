require "pry"

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |category, attribute|
    attribute.each do |info, bird_name|
      bird_name.each do |name|
        if !pigeon_list.has_key?(name)
          pigeon_list[name] = {}
        end
        if !pigeon_list[name].has_key?(category)
          pigeon_list[name][category] = []
        end
        if !pigeon_list[name][category].include?(info)
         pigeon_list[name][category] << info.to_s 
        end
      end
    end
  end
  pigeon_list
end