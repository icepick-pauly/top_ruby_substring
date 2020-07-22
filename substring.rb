dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(input, dictionary)

  phrase = input.downcase.gsub(/\W/, ' ').split(" ")
  counts = Hash.new(0)

  phrase.each do |word|
    dictionary.each do |sub|
      if word.include?(sub.downcase)
        if counts.has_key?(sub)
          counts[sub] += 1
        else
          counts[sub] = 1
        end
      end
    end
  end

  p counts.sort.to_h

end

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
