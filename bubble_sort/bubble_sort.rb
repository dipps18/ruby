def bubble_sort(array)
    for i in (0...array.length-2)
        for j in (0...array.length-1)
            array[j], array[j+1]=array[j+1], array[j] if(array[j]>array[j+1])
        end
    end 
    array
end 

bubble_sort([10, 2, 6, 2, 1, 5, 8, 6, 0, 2, 8, 9])
bubble_sort([10,2,7,1,5])
bubble_sort([4,3,78,2,0,2])