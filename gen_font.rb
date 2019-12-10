#!/usr/bin/env ruby

N = 25
Y = "./in/yumin.ttf"

def s(e)
  STDERR.puts e
  system(e)
end

N.times do |i|
  y = (i == 0) ? Y : "./tmp.ttf"
  e = "bin/fontmerger -c ./in/fonts.json -x range-#{i} -o ./out -- #{y}"
  s(e)
  break if i >= N - 1
  e = "mv ./out/YuMincho.ttf ./tmp.ttf"
  s(e)
end
e = "mv ./out/YuMincho.ttf ./out/yumin-twemoji.ttf && rm ./tmp.ttf"
s(e)
