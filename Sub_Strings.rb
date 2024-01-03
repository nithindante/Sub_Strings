dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  result = {}
  i = 0
  dictionary.reduce(Hash.new(0)) do |res, word|
    next unless string.include?(word)
      if !(result.has_key?(word)) 
      i = 0
      end
      if (result.has_key?(word)) 
      i = result[word]
      end  
      result[word] = string.scan(word).length + i
     i = i+1
      result
    end
  p result
  end
substrings("below", dictionary)