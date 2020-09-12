require "pry"

def nyc_pigeon_organizer(data)
those_pigeons = data.each_with_object({}) do |(category, stats), pigeon_profiles|
  stats.each do |qualities, names|
    names.each do |pigeon|
      if !pigeon_profiles[pigeon]
        pigeon_profiles[pigeon] = {}
      end
      if !pigeon_profiles[pigeon][category]
        pigeon_profiles[pigeon][category] = []
      end
      pigeon_profiles[pigeon][category] << qualities.to_s
    end
  end
end
end


# names = Theo, Peter Jr, Lucky, Ms. K, Queenie, Andrew, Alex
# category = color, gender, lives
# quality = purple, gray, white, brown, male, female, subway, central park, library, city hall



# hash.each_with_object({}) do |(k, v), a|
#  a[k] = v + 3
# end
