# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  min_value = 0
  min_key = nil
  return min_key if name_hash.empty?
  name_hash.collect do |key, value|
    if min_value == 0
      min_value = value
      min_key = key
    elsif value < min_value
      min_value = value
      min_key = key
    end
  end
  return min_key
end
