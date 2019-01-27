library(ggplot2)

attach(diamonds)
df<-diamonds
df%>%filter(clarity=="IF")%>%ggplot(aes(x=carat, y=price))+geom_point()+geom_smooth(method="lm")+labs(title="Price vs. Carat Plot for Diamonds", x="Size in carats", y="price in $")+theme_bw()
df%>%filter(clarity=="IF")%>%ggplot(aes(x=carat, y=price, color=color))+geom_point()+facet_wrap(~color)+geom_smooth(method="lm")
df%>%
  ggplot(aes(x=carat, y=price, color=color))+
  geom_point()+
  geom_smooth(method="lm")+
  facet_wrap(~clarity)
df2<-df %>% select(price) %>%
  filter(price>5000)
