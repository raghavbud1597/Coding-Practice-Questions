# Question Find an equilibrium point in an array , Equilibrium index of an array is an index such that the sum of elements at lower indexes is equal to the sum of elements at higher indexes Input : A[] = {-7, 1, 5, 2, -4, 3, 0}
# Output : 3
def equilibrium (arr)
	index = arr.length-1
	len = arr.length-1
	while index > 0
		left = arr[0..index-1].reduce(:+)
		right = arr[index-1..len].reduce(:+)
		if left == right 
			return index
		end
		index -= 1
	end
end 

#Sample test cases 
def test_random
  sample_array = [-7, 1, 5, 2, -4, 3, 0]
  expected = equi(sample_array)
  assert_equal expected, 3
end

def test_trivial_pyramid
  sample_array = [1, 2, 3, 4, 3, 2, 1]
  expected = equi(sample_array)
  assert_equal expected, 3
end

def test_single_nil
  sample_array = [nil]
  expected = equi(sample_array)
  assert_equal expected, nil
end
