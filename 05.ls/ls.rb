
ls = Dir.glob("*") #ファイルとディレクトリの表示
p ls

ls.each_with_index do |name ,idx|
  # puts "name=#{name}"
  # puts "idx=#{idx}"
  if idx % 3 == 2
  print name + "\n"
  else
  print name + "             "
  end
end
