TV_HOURS_TABLE<-gss_cat %>% 
  group_by(marital) %>%
  summarise(mean_tv_hours= mean(tvhours,na.rm=TRUE))

write.csv(TV_HOURS_TABLE,here("Tv_hours_by_marital.csv"))
