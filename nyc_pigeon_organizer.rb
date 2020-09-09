require 'pry'

def nyc_pigeon_organizer(data)
  data.each_with_object({}) do |(key, value), final_hash| 
    value.each do |value, names|
      names.each do |name|
        
        if !final_hash[name]
          final_hash[name] = {}
        end
        
        if !final_hash[name][key]
          final_hash[name][key] = []
         
        end
        
        final_hash[name][key].push(value.to_s)
        
      end
    end
    final_hash
  end
 end
 