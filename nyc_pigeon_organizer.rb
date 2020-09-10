require 'pry'

def nyc_pigeon_organizer(data)
  data.each_with_object({}) do |(attribute, value),final_hash|
    value.each do |inner_key, names|
      names.each do |name|
      
        if !final_hash[name]
          final_hash[name] = {}
        end
        
        if !final_hash[name][attribute]
          final_hash[name][attribute] = []
        end
        
        final_hash[name][attribute].push(inner_key.to_s)
      
      end    
    end
    final_hash
  end
 end
 