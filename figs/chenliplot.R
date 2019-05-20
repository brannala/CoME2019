library(tidyverse)

chenli = function(x) { return(1/(-log(3/2) - log(1-x))) }
    
ggplot(data.frame(x=seq(0.335,0.99,by=0.01)), aes(x)) + stat_function(fun=chenli) + labs(color="Population Size")+labs(x = "Pr(match)",title="Chen and Li Estimator")+theme( panel.background = element_rect(fill = "white", colour = "black", size = 0.5, linetype = "solid"), plot.title = element_text(hjust = 0.5)) + ylab( expression(frac(2 * N, Delta))) + theme(axis.title.y = element_text(angle = 0))

ggsave(filename = "~/github/CoME2019/figs/chenli.pdf", width=3, height=3, device=cairo_pdf)
