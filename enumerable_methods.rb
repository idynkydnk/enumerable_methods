module Enumerable
	def my_each
		index = 0
			while self[index]
				yield(self[index])
				index += 1
			end
	end

	def my_eachs
    	for i in self
      		yield(i)
    	end
  	end

  	def my_each_with_index
  		index = 0
  		for i in self
  			yield(self[index], index)
  			index += 1
  		end
  	end

  	def my_select
  		result = []
  		for i in self
  			if yield(i)
  				result << i
  			end
  		end
  	end

  	def my_all?
  		for i in self
  			if !yield(i)
  				return false
  			end
  		end
  		return true
  	end

  	def my_any?
  		for i in self
  			if yield(i)
  				return true
  			end
  		end
  		return false
  	end

  	def my_none?
  		for i in self
  			if yield(i)
  				return false
  			end
  		end
  		return true
  	end

  	def my_count *a
  		x = 0
  		for i in self
  			if a[0]
  				if i == a[0]
  					x += 1
  				end
  			elsif !block_given?
  				x += 1
  			else
  				if yield(i)
  					x += 1
  				end
   			end

  		end
  		return x
  	end

  	def my_map
  		result = []
  		for i in self
  			result << yield(i)

  		end
  		

  		return result
  	end

  	def my_inject a

  		for i in self
  			a = yield(a,i)
  		end
  		return a
	end

	def multiply_els array
		for i in array
			result = array.my_inject(1) { |result, i| result * i}
		end
		return result
	end



end



#a = [2,4,5]
#b = Proc.new { |c| c + 30 }
#puts a.map(&b)
#puts a.multiply_els(a)
#a.each { |b| puts b }
#a.my_each { |b| puts b }
#a.each_with_index { |b, c| puts b.to_s + " " + c.to_s }
#a.my_each_with_index { |b, c| puts b.to_s + " " + c.to_s }
#puts a.select { |b| b.even? }
#puts a.select { |b| b.even? }
#puts a.all? { |b| b < 300 }
#puts a.my_all? { |b| b < 300 }
#puts a.any? { |b| b < 10 }
#puts a.my_any? { |b| b < 10 }
#puts a.none? { |b| b > 223 }
#puts a.my_none? { |b| b > 223 }
#puts a.count { |b| b < 20 }
#puts a.my_count { |b| b < 20 }
#puts a.count
#puts a.my_count
#puts a.count(10)
#puts a.my_count(10)
#puts a.map { |b| b + 30 }
#puts a.my_map { |b| b + 30}
#puts a.inject(0) { |b, c| b + c }
#puts a.my_inject(0) { |b, c| b + c }

