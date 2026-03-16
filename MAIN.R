gss_cat
TV_HOURS_TABULATION<-gss_cat %>% 
  filter(age < 30) %>% 
  group_by(marital) %>%
  summarise(mean_tv_hours= mean(tvhours,na.rm=TRUE))

write.csv(TV_HOURS_TABULATION,here("Tv_hours_by_marital.csv"))
