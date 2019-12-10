#!/usr/bin/env ruby

# ref: https://github.com/ChALkeR/Symbola-Emoji/blob/master/emoji.pe
txt = <<EOS
["00A9", "00A9"]
["00AE", "00AE"]
["FE0F", "FE0F"]
["2000", "206F"]
["20D0", "20FF"]
["2100", "214F"]
["2190", "21FF"]
["2300", "23FF"]
["2460", "24FF"]
["25A0", "25FF"]
["2600", "26FF"]
["2700", "27BF"]
["2900", "297F"]
["2B00", "2BFF"]
["3000", "303F"]
["3200", "32FF"]
["1F000", "1F02F"]
["1F0A0", "1F0FF"]
["1F100", "1F1FF"]
["1F200", "1F2FF"]
["1F300", "1F5FF"]
["1F600", "1F64F"]
["1F680", "1F6FF"]
["1F900", "1F9FF"]
["E0000", "E007F"]
EOS

str = "["
txt.split("\n").each_with_index do |line, i|
  str += <<EOS
{
  \"id\": \"range-#{i}\",
  \"filename\": \"./in/TwitterColorEmoji-SVGinOT.ttf\",
  \"unicode_range\": #{line}
},
EOS
end
str = str[0...-2]
str += "]"
puts str
