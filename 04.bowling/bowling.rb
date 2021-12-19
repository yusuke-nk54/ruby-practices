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

frames = shots.each_slice(2).to_a

point = frames.each_with_index.sum do |frame, idx|
  if frame[0] == 10 && idx <= 8
    frame_point = 0
    frame_point += frames[idx + 2][0] if frames[idx + 1][0] == 10
    frame_point + 10 + frames[idx + 1].sum
  elsif frame.sum == 10 && idx <= 8
    10 + frames[idx + 1][0]
  else
    frame.sum
  end
end

puts point
