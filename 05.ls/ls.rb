
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



mold = []
ls.each_slice(3) do |l|
  mold << l
end

flatten_mold = mold.map {|m| m.values_at(0...3)}.flatten

# p mold.flatten

car = []
flatten_mold.each_slice(flatten_mold.size / 3) do |o|
  car << o
end
neko = car.transpose
p neko

neko.each do |m|
  m.each do |k|
    print k.to_s.ljust(24)
  end
  print "\n"
end