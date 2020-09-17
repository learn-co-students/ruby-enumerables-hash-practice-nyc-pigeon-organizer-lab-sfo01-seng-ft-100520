require 'pry'
def nyc_pigeon_organizer(data)
 final_result = data.each_with_object({}) do |(key, value), result|
 value.each do |element, names|
   names.each do |name|
     if !result[name]
       result[name] = {}
      end
     if !result[name][key]
       result[name][key] = []
     end
     result[name][key].push(element.to_s)
  end
 end
 end
     #binding.pry
end
