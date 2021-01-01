library(ggplot2)
library(ggforce)
library(gganimate)

circles <- data.frame(
  x = 1,
  y = 1,
  r = c(30:1,rep(1,8),2:29, rep(30,8)),
  id = 1:74
)
 
circle_anim <- ggplot(circles, aes(x0 = x, y0 = y, r = r))+
  geom_circle()+
  theme_void()+
  transition_time(id)+
  shadow_wake(.25, wrap = FALSE)

animate(circle_anim, type = "cairo")

anim_save("animation/outputs/circle_anim.gif")
