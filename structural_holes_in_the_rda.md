## Structural Holes in the RDA 

**TL;DR** - RDA has some structural holes around corporate / private sector participation. This is actually an interesting feature that could be exploited. 

When used properly, network analysis is a fun and powerful tool to understand sociotechnical systems. This is demonstrated nicely by Mark Granovetter's work on the ["strength of weak ties" or (SWT)](http://en.wikipedia.org/wiki/Mark_Granovetter#The_strength_of_weak_ties). The underlying premise of SWT is that most of the value we benefit from a social network are from individuals we are loosely connected to...Strong ties tend to know all of the same stuff we do, and as a results there is little information advantage to strong ties. 

The underlying causal mechanism for the SWT argument is what Ron Burt called "structural holes." 

Burt formulated this idea in thinking about the ways in which social **structures** create entrepreneurial opportunities for some players, and not others (1992). Most social networks have dense clusters, and little overlap in cluster membership. What Burt recognized was that SWT is a matter of position - being able to fill a hole that exists between two different dense clusters gives rise to greater information exchange and knowledge sharing. 

What does any of this have to do with the RDA?

Well, in my mind an important challenge for any of us that care about the long term sustainability of infrastructures that support research data data sharing is filling structural holes - And a major structural hole exists between private industry and academia / government. Why is this an important structural hole? Because the government is broke, (most) academics have their head up their ass chasing tenure, and there is a huge frenzy in Silicon Valley to change the world with technology but very little concern for data that tells us we're all destroying the world with our thirst for new technologies. 

How do I know a structural hole exists between the private and public sector, especially as it relates to research data? Well some smart [editorials](http://www.sciencemag.org/content/341/6146/616) have been written about his.

Empirically I guess we don't know this.         

So, let's have a go at finding out. 
         
(Note: If you're interested in anything I say after this, you can find all my data / code here: )

#Looking for structural holes in the RDA

This work is going to focus on the [Research Data Alliance](https://rd-alliance.org/about.html). Why? Because they have an ambitious mission statement like "The RDA vision is researchers and innovators openly sharing data across technologies, disciplines, and countries to address the grand challenges of society." And, they have a lot of data I can quickly exploit. 

---

First, I scraped the the RDA's website looking for demographic info on members of working groups. This gives us some interesting initial descriptive statistics, like the following distribution of members by title:

![](https://github.com/nniiicc/rda/raw/master/Images/RDA-Titles.jpeg)

By my count only about 109 of 978 members are related to private sector. This indicates, there is likely to be some [homophily](http://www.annualreviews.org/doi/abs/10.1146/annurev.soc.27.1.415) in the social network of the RDA. 

To understand that a bit better we can look at the distribution of members by  organization type:

![](https://github.com/nniiicc/rda/raw/master/Images/RDA-Orgs.jpeg)

The actual numbers break down like this:


| Organization Type                   |    |
|-------------------------------------|-----|
| Academia/Research                   | 703 |
| Government/Public Services          | 120 |
| IT Consultancy/Development          | **30**  |
| Large Enterprise                    | **17**  |
| Other (please specify) | 48  |
| Policy/Funding Agency               | 8   |
| Press & Media                       | 6   |
| Small and Medium Enterprise         |**46**  |
|                                     | 978 |


This shows us about the type of RDA members, but it doesn't really tell us how they interact. 

Each user page also lists the Working Groups or Interest Groups that each individual is a member of... so, we can use that data to create something like a co-membership network that will show which groups and which types of users are connected to one another. 




To do this, I created two datasets: 

1. `Member -> Working Group` A multi-modal graph where `Members` and `Working Groups` are nodes, and edges indicate that a member is related to a working group (not other members). This shows us which members the different working groups share in common.

2. `Member <-> Member` A graph were only `Members` are nodes and edges represent their relationships via a Working Group. This gives us something like a co-membership network, showing which members are connected to one another. 


`Member -> Working Group`

![](https://github.com/nniiicc/rda/raw/master/Images/WG-Mem-Networks.png)

Tomorrow - return to stats. Eventually figure out why the hell the 