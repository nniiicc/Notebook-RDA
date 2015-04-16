#rda Title plot

h<-ggplot(rda,
        aes(x=reorder(Title,Title,
                      function(x)-length(x)))) +
     geom_bar() + theme(axis.text.x = element_text(angle = 90, hjust = 1))
     
 h + labs(list(title = "Titles of Working Group Members in RDA", x = "Titles", y = "Members"))
