

def nyc_pigeon_organizer(data)
  final_list = data.each_with_object({}) do |(key, value), final_answer|
    value.each do |in_key, names|
      names.each do |name|
        if !final_answer[name]
          final_answer[name] = {}
        end  
        if !final_answer[name][key]
          !final_answer[name][key] = []
        end
      final_answer[name][key].push(in_key.to_s)
      end
    end
  end
end


