#bubble sort problem 

    def bubble_sort(array)
        temp = 0
        n = array.length
    (0..n).each do |i|
            (0...n-i-1).each do |j|
                if array[j]>array[j+1]
                    temp =array[j+1]
                    array[j+1] = array[j]
                    array[j]=temp
                end
            end
        end
        puts array.join(", ")
    end

    bubble_sort([0,1,3,2,4,5,6,8,6,4,8,9])
