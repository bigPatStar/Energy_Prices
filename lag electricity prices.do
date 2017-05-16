local s = 1
local a = `s'*365-1

gen fprice`s' = F`a'.price
gen fhigh`s' = F`a'.high
gen flow`s' = F`a'.low

reg fprice`s' multtemph addtemph multtempl addtempl doy dow month numt numc date multtemp addtemp cloud totalpayint totalempint totalestint ngprice
predict predicted`s', xb
reg fhigh`s' multtemph addtemph multtempl addtempl doy dow month numt numc date multtemp addtemp cloud totalpayint totalempint totalestint ngprice
predict predictedh`s', xb
reg flow`s' multtemph addtemph multtempl addtempl doy dow month numt numc date multtemp addtemp cloud totalpayint totalempint totalestint ngprice
predict predictedl`s', xb
local b = `a'-1
gen low`s' = L`a'.predictedl`s'
gen high`s' = L`a'.predictedh`s'
gen price`s' = L`a'.predicted`s'

ttest price == price`s'
