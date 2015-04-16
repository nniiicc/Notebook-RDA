#rda Org Type plot
p<-ggplot(rda,
       aes(x=reorder(Organization.Type,Organization.Type,
                     function(x)-length(x)))) +
    geom_bar() + theme(axis.text.x = element_text(angle = 90, hjust = 1))

p + labs(list(title = "Org. Type Working Group Members in RDA", x = "Organizational Types", y = "Members"))
