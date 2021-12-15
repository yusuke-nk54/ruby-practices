
ls = Dir.glob("*") #ファイルとディレクトリの表示
p ls
max_word = ls.max_by { |s| s.length }
p max_word
p max_word.size

space = " "
# ls.each do |x|
#   puts space * (max_word.size - x.length)
# end

ls.each_with_index do |name ,idx|
  # puts "name=#{name}"
  # puts "idx=#{idx}"
  if idx % 3 == 2
    print name + "\n"
  else
    print name + (space * (max_word.size - name.length)) + "   "
  end
end
puts "\n"