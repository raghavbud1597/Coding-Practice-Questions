#question - If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

def sum_of_multiples_brutforce(num)
	i = 0
	sum = 0
	while i < num
		if(i%3==0 || i%5==0)
			sum += i
		end
		i += 1
	end
	sum
end
# time complexity is O(n)

def sum_of_multiples_optimized(num)
	num -= 1
	greatest_multiple_of_three = num/3
	greatest_multiple_of_five = num/5
	greatest_multiple_of_common_numbers = num/15
	sum = 3*(greatest_multiple_of_three*(greatest_multiple_of_three+1)/2) + 5*(greatest_multiple_of_five*(greatest_multiple_of_five+1)/2) - 15*(greatest_multiple_of_common_numbers*(greatest_multiple_of_common_numbers+1)/2)
	# used concept of sum of natural numbers
	# eg: 10 multiples of 3 are 3,6,9 or 3(1,2,3) or 3(3((3+1)/2)) 
	# sum of natural numbers is n(n+1)/2
end
# time complexity is O(1)



#Sample test cases 
def test_with_hundred
  sum_with_brutforce = sum_of_multiples_brutforce(1000)
  sum_with_optimized = sum_of_multiples_optimized(1000)
  assert_equal sum_with_brutforce, 233168
  assert_equal sum_with_optimized, 233168
end

