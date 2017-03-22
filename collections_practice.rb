
def sort_array_asc(array)
	array.sort
end

def sort_array_desc(array)
	array.sort { |x,y| y <=> x}
end

def sort_array_char_count(array)
	array.sort { |x,y| x.length <=> y.length}
end

def swap_elements(array)
	array << array.delete_at(1)
end

def reverse_array(array)
	array.reverse
end

def kesha_maker(array)
	array.collect { |word| kesha_helper(word) }
end

def kesha_helper(word)
	new_word = word.slice(0,2) + "$" + word.slice(3,word.length)
end

def find_a(array)
	new_array = []

	array.each do |word|
		if word[0] == 'a' || word[0] == 'A'
			new_array << word
		end
	end

	new_array
end

def sum_array(array)
	sum = 0
	array.each {|el| sum += el}
	sum	
end

def add_s(array)
	new_array = []
	
	array.each_with_index do |word, idx|
		if idx != 1
			new_array << word + "s"
		else
			new_array << word
		end
	end
	
	new_array
end

