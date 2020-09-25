require 'pry'
def nyc_pigeon_organizer(data)
final_result = data.each_with_object({}) do |(key, value), names_array|
  value.each do |color_details, array_of_names|
    array_of_names.each do |value_inside|
      if !names_array[value_inside]
        names_array[value_inside]  = {}
        end
      if !names_array[value_inside][key]
        names_array[value_inside][key] = []
        end
    names_array[value_inside][key].push(color_details.to_s)
      end
    end
  end
end
