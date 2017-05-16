clear

cd "~/Google Drive/Data-X Project"

import delimited "/Users/aw/Google Drive/Data-X Project/SD&LA-WeatherData/la2012.csv"

gen date  = v1 + 18994

drop v1 high1 avg1 low1 high2 avg2 low2 high3 avg3 low3 high4 avg4 low4 high5 avg5 high6 sum

gen fog = unnamed20 == "Fog"
gen rain = unnamed20 == "Rain"
gen rt = unnamed20 == "Rain , Thunderstorm"
gen fr = unnamed20 == "Fog , Rain"

drop unnamed20

save la12, replace
