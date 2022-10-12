library(OptionPricing)
library(jsonlite)

config = fromJSON("../config/option_config.json")
european_call = BS_EC(K=config$K, r=config$r, sigma=config$v, T=config$T, S0=config$S)
print(european_call)
write.csv(european_call, file='R_call_price.csv')