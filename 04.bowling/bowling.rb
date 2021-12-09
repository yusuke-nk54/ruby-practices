# frozen_string_literal: true

score = ARGV[0]
scores = score.split(',')
shots = []
scores.each do |s|
  if s == 'X'
    shots << 10
    shots << 0
  else
    shots << s.to_i
  end
end

frames = []
shots.each_slice(2) do |s|
  frames << s
end

pp frames
point = 0
# pp frames.sum
frames.each_with_index do |frame, idx|
  if frame[0] == 10 && idx <= 8
    point += frames[idx + 2][0] if frames[idx + 1][0] == 10
    point += 10 + frames[idx + 1].sum
  elsif frame.sum == 10 && idx <= 8
    point += 10 + frames[idx + 1][0]
  else
    point += frame.sum
  end
end
puts point