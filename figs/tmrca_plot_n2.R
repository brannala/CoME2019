library(tidyverse)

ggplot(data.frame(x=c(0, 100000)), aes(x)) + stat_function(fun=dexp, args = list(rate=1/20000), aes(color="2N = 20000")) + stat_function(fun=dexp, args = list(rate=1/10000), aes(color="2N = 10000")) + labs(color="Population Size")+labs(x = "t (TMRCA)",y="f(t)",title="Probability density of coalescence time (n=2)")+theme( panel.background = element_rect(fill = "white", colour = "black", size = 0.5, linetype = "solid"),axis.text.y = element_blank(), plot.title = element_text(hjust = 0.5)) + geom_vline(aes(xintercept=20000),color="blue",linetype="dotted") + geom_vline(aes(xintercept=10000),color="red",linetype="dotted")

ggsave(filename = "~/github/CoME2019/figs/pdfn2.pdf", width=5, height=3, device=cairo_pdf)
