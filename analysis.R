#load packages
library(dplyr)
library(EpiModel)

#deterministic model
#max possibility of transmission
param <- param.dcm(inf.prob = 0.632, act.rate = 0.25)
init <- init.dcm(s.num = 500, i.num = 1)
control <- control.dcm(type = "SI", nsteps = 500)

mod <- dcm(param, init, control)

plot(mod)

#with social distancing
#possibility of transmission drops to 1%

sd_param <- param.dcm(inf.prob = 0.01, act.rate = 0.25)
sd_init <- init.dcm(s.num = 500, i.num = 1)
sd_control <- control.dcm(type = "SI", nsteps = 500)

sd_mod <- dcm(param, init, control)

plot(sd_mod)

#stochastic model
#max possibility of transmission
st_param <- param.icm(inf.prob = 0.632, act.rate = 0.25)
st_init <- init.icm(s.num = 500, i.num = 1)
st_control <- control.icm(type = "SI", nsims = 10, nsteps = 300)
st_mod <- icm(st_param, st_init, st_control)

plot(st_mod, y = "i.num", sim.lines = TRUE, mean.smooth = FALSE, qnts.smooth = FALSE)


#masking
mask_param <- param.icm(inf.prob = 0.21, act.rate = 0.25)
mask_init <- init.icm(s.num = 500, i.num = 1)
mask_control <- control.icm(type = "SI", nsims = 10, nsteps = 300)
mask_mod <- icm(mask_param, mask_init, mask_control)

plot(mask_mod, y = "i.num", sim.lines = TRUE, mean.smooth = FALSE, qnts.smooth = FALSE)

