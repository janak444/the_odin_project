dictationary = ["hello", "i", "it", "me", "janak", "suman", "main", "height", "mainly","thirsty"]

hash_function = {}
def substring(string, dictationary)
    substrings = [];
    string_array = string.split(" "||","||".")
    (0...string_array.length).each do |k|
        (0..string_array[k].length).each do |i|
            (i...string_array[k].length).each do |j|
                substrings << string_array[k][i..j]
            end
        end
    end
     
    result_hash = Hash.new(0)
    substrings.each do |substrin|
        if dictationary.include?(substrin)
        result_hash[substrin] += 1
        end
    end
 puts result_hash
end

substring("hello,and hello roshan it's me janak suman janak", dictationary)
