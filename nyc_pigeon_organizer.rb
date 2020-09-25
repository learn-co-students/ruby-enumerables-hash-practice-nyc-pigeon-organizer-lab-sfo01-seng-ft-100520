require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  data.each_with_object({}) do |(key, value), birds_new|
    value.each do |colors, names|
      names.each do |name|
        if !birds_new[name]
          birds_new[name] = {}
        end
        if !birds_new[name][key]
          birds_new[name][key] = []
        #  binding.pry
      end 
      birds_new[name][key] << colors.to_s
    end 
   end  
end
end