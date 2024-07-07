
def substrings(str , array)
    freq_substrings = {}
    str.downcase!
    string_array = str.split(" ")


    array.map! {|item| item.downcase}

    array.each do |substring|
        freq = string_array.grep(/#{substring}/)
        freq_substrings[substring] = freq.length  unless freq.length == 0
        
    end
    p freq_substrings.sort_by { |key , value| -value}.to_h
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary)
#{ "below" => 1, "low" => 1 }

substrings("Howdy partner, sit down! How's it going?", dictionary)
#{ "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }


    

