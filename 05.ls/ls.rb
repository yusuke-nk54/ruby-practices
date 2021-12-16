# frozen_string_literal: true

ls = Dir.glob('*')

max_word = ls.max_by(&:length)

ls_array = []
ls.each_slice(3) do |a|
  ls_array << a
end

flatten_ls_array = ls_array.map { |m| m.values_at(0...3) }.flatten

ls_array_slice = []
flatten_ls_array.each_slice(flatten_ls_array.size / 3) do |b|
  ls_array_slice << b
end
ls_list = ls_array_slice.transpose

space = ' '

ls_list.each do |list|
  list.each do |n|
    print "#{n}#{space * (max_word.size - n.to_s.length)}   "
  end
  print "\n"
end
