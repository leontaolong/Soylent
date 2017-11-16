# Soylent Data Science Project

## Aggregating Bikeshare Data to Compare Ideal
Distribution Locations

## Team Soylent: Marissa Exelby, Leon Long, Christie Gan, Doreen Nguyen

## Introduction/Research Question

As road congestion continues to be prevalent within major cities in the U.S, bikeshares
are an eco-friendly solution that conveniently allow both tourists and locals to get to their
designated destination at a low price. This take away the hassle of ownership and responsibility
of a vehicle by extending public transport, making it a win-win for both users and the
environment. The rising popularity in the bikeshare market is due to incorporating technology
(via mobile apps) to improve system planning and safety protocol. From customer transactions
generated from each ride, we are able to reveal overall trends and patterns that may otherwise
be lost within a large dataset.

## Research Question: 

The question we are asking is how does bikesharing facilitate the use of
public transportation in New York City? We want to find out if there is high bikeshare station use
near NYC subway stations. With answers to these questions we can improve upon the current
bikeshare difficulties some of the stationed bike share companies faced. Additionally, our
research could be valuable for the stationless bike companies so they know in what locations to
initially place and then redistribute bikes.

## Previous Work

The topic we are exploring is bike share programs in cities across the world and what
contributes to their success. Both stationed and stationless bike share programs have had
success depending on their location, so we are exploring what contributes to this. From the
literature review conducted, a couple themes arose. The first being that high times of bike use
correlate with work/commute travel indicating users use these bikes in addition to or for their
commute. Another theme is that ensuring bike availability and storage at end of trip is crucial.
Lastly, the strategic location of stations is another prevalent theme.
There are users who ride public bikes infrequently for leisure purposes, but a large
number of users ride these bikes as part of their weekly commute. In the 2014 paper titled

Modeling Bike Share Station Data: Effects of Nearby Businesses and Jobs on Trips to and From
Stations , it was found that “users’ main trip purposes are for commuting and utility travel,
including last mile transit options.” A large amount of user’s main purpose of riding a public bike
is for convenience purposes, according to Fishman et al in their 2012 paper Bike Share: A
Synthesis of Literature. A study called Digging Into The Pronto Database by Jake VanDerPlas
that analyzed data from the Pronto bikes that were operating in Seattle shows similar findings.
This data looked at annual members of Pronto bikes and Short-Term pass holders and found
there is a strong weekly cycle for both sets of users. While annual pass members use peaked
on weekdays, short-term pass holder usage tends to peak on weekends. Additionally, plotting
by time throughout the day showed that peak usage on weekdays was at 8am and 5pm
indicating high usage from commuters.

The other main theme gleaned from the literature review was the importance of bike
availability in terms of pick up, but perhaps even more crucial, in terms of drop off space (Static
Repositioning in a bike-sharing system: models and solutions approaches). With stationed
bikes, users are faced with the possibility that the bike station they anticipated they would drop
off at, is full. Instead, they would have to find another station that is further away from their
desired destination to avoid incurring additional ride time. This theme was backed up in several
other papers including Understanding Bike-Sharing Systems using Data Mining: Exploring

Activity Patterns, which also concluded that high availability of bikes is crucial to success, as is
the spatial relocation of bikes to support this.
Similar to high availability of bikes at stations, is the strategic location of stations. In the
2012 paper Optimizing the location of stations in bike-sharing programs: A GIS approach, they
write that one of the key factors of success of these programs is the station’s proximity to places
of high potential demand such as transit stations, popular activities, etc. Additionally, the data
analysis on Pronto Bikes show frequency of uphill and downhill bike rides showed that there are
many more downhill rides than uphill rides indicating that there should be some strategy in
placing stations according to elevation.
There is quite a breadth of research on this topic when it comes to type of use and
factors that contribute to success. What is missing is location data for specific cities, which is
where our research could fill that gap. Our research aims to look at a specific city and attempt to
answer the question of which stations are most frequently visited in an aim to optimize station
location and redistribution of public bikes.

## Motivation

First, we decided to look at this field partially because of the rising popularity of bike
sharing over the past a couple of months. The trend is current and as we researched about the
previous work, and while there is research done on this topic, we feel we could fill the gap of
ideal station location for specific cities. Thus, it would be great if we can try our best to explore
and discover novel insights within this promising field.
Second, we found that there are actually many related datasets generated for us to look
into, and the data has a wide range of attributes across a wide range period of time. It greatly
ensures the feasibility of our project. We have also contacted Spin, one of the stationless bike
companies operating in Seattle for some data on their bike use, and they responded asking
what data specifically we would need. We will soon have more information on this, and could
potentially have a very unique project given that Spin data is very new and not publicly
available.

Moreover, as students in the iSchool and bikeshare users ourselves, we believe in
eco-friendly transportation empowered by modern technology. We strive to help the
stakeholders within this business field: to enhance the user’s experience by easing the access
for users to know where to pick up a bike during a certain time of day, and, on the other hand, to
help business best utilize their resources and distribute the bikes more effectively and efficiently.
Data

In order to answer our question, data must be utilized to back up our findings. We have
found datasets of Citi Bike, a bike sharing program in New York City. Citi Bike is an “unlock,
ride, and return” bike system, meaning a person will go to a bike station and return to a bike
station. The datasets provided by Citi Bike are by year, and contains data on the start and end
station for each ride. There are addresses, latitude, and longitude data on both the start and end
stations. The dataset also contains information on the type of rider, and gender, but the time in
between stations are censored. Citi Bike also claims to have hundreds of stations around New
York City, so there are plenty of data as well as routes to be found in between them. With this
sort of data, we can plot the routes between stations, find which stations are being frequented
more often, and the distance between stations. Since there are so many, we can find whether
some stations are more “useful” or frequented the most often, and some that are not as useful.
The variables we are most likely examining are the start station latitude, start station longitude,
end station latitude, and end station longitude.

This data was collected by Citi Bike, which is able to track where people park their bikes.
Because stations require people to lock their bikes, whenever a person locks or unlocks a bike,
information about the location of that station is sent directly to the company. It is a very efficient,
fast method of collecting data. Each station is tracked by the company, and allows the company
to collect data digitally rather than collect in person. If we have extra time, we may find datasets
from different bike sharing companies.

We have also found location data for NYC subway station provided by the New York
state government. The data contains the name of the line, the station name, and latitude and
longitude of the data. This data can be exported as a CSV and cleaned, because at first glance,
it contains many duplicates because some stations have many lines that stop there.

## Analysis

Given the current data to be manipulated, we have two main goals that will allow us to
extract conclusive data. First, visually displaying the data by plotting the route taken from station
to station during times of the day. With data extending over the course of several years,
representing the data visually will reveal any trending station that vary from peak hours to
weekends and weekdays. We are then able to observe New York city’s outline and subway
station to conclude differing geographical or environmental traits that impact a stations
frequency of usage.

Second, summarizing the data with hard numbers in conjunction with the visual map.
This will give us a concrete answers to questions such as: What is the highest number of
drop-offs/pick-ups within a location? At what times are stations being the most frequently used?
CitiBike can then adjust their allocation of resources according to these conclusions in order to
better manage their current system, improving customer satisfaction and accessibility.
One of the biggest reasons behind our interest in bikeshares is the booming popularity of
stationless bikeshares such as Spin or Limebike. If given access to any data with this new
approach, our team could also go through the same process of visually plotting and
summarizing to compare what geographical traits differ between the two approaches.

Stationless bikeshares allow for routes to be free of range and convenient for pickup if near a
customer's current location, however there is no guarantee that a bike is at a particular place.
Stationed bikeshares restricts range, but guarantees a bike for pick-ups. With this in mind, we
are able to both have summary and visual representation of the overlap between customer bike
routes in both station-less and stationed bikeshares. This can ultimately lead us to answering
how much of an impact free-ranged rides influence accessibility and what traits can each
company implement to improve their own system.
