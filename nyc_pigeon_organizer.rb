require "pry"

def nyc_pigeon_organizer(data)
friggen_pigeons = data.each_with_object({}) do |(category, stats), pigeons_yo|
  stats.each do |qualities, names|
    names.each do |pigeon|
      if !pigeons_yo[pigeon]
        pigeons_yo[pigeon] = {}
      end
      if !pigeons_yo[pigeon][category]
        pigeons_yo[pigeon][category] = []
      end
      pigeons_yo[pigeon][category] << qualities.to_s
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
