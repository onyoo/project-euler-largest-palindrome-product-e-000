# Implement your object-oriented solution here!
class LargestPalindromeProduct

  def largest_palindrome_product
#requirement to pass test.
  end

  def answer
    #find target products
    @high = 999
    @high_set = (@high - 100..@high).to_a
    @perm = @high_set.permutation(2).to_a
    @perm_prod = @perm.map {|set| set[0]*set[1]}.uniq

    @perm_prod = @perm_prod.reverse

    #slices and matches 
    @x = @perm_prod.select do |prod|
      prod.to_s.byteslice(0,3) == prod.to_s.byteslice(3,5).reverse
      end
    @encode_answer = @x.max
  end
end