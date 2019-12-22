def create_hash_w_name_keys(data)
  data.each_with_object( {} ) do |(attribute, attribute_hash), new_data|
    attribute_hash.each_with_object(new_data) do | (attribute_quality, name_array), new_data |
      name_array.each_with_object(new_data) do | i, new_data |
        if !new_data[i]
          new_data[i] = {}  #insert method that populates hash  
          new_data = fill_indivual_hash(data, new_data, i)
        end 
      end
    end
    new_data
  end 
end


def fill_indivual_hash(data, new_data, name_key)
  data.each_with_object( {} ) do |(attribute, attribute_hash), new_data|
    attribute_hash.each_with_object(new_data) do | (attribute_quality, name_array), new_data |
      name_array.each_with_object(new_data) do | i, new_data |
        if i == name_key && !new_data[name_key][attribute]
          new_data[name_key][attribute] = [attribute_quality.to_s]
        elsif i == name_key && new_data[name_key][attribute]
        new_data[name_key][attribute] << attribute_quality.to_s
        end
      end
    end
    new_data
  end 
end    


def nyc_pigeon_organizer(data)
  new_data = create_hash_w_name_keys(data)
  #iterate through new_data keys and add key value pairs 
  new_data
end 