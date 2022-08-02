dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def sub_string(str, dictionary)
    str.downcase!
    str_array = str.split
    match_array = []
    count_array = []
    dictionary.each do |i|
        if  str_array.any? { |s| s.include?(i)}
            match_array.push(i)
        end
        count =  str_array.count {|s| s.include?(i)}
        count_array.push(count)
        count_array.delete(0) 
    end
    result = match_array.zip(count_array).to_h
    p result
end
sub_string("go", dictionary)