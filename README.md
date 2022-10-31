## Demo Video 💧
[![Alt text](https://img.youtube.com/vi/FL7ec9KQx9A/0.jpg)](https://www.youtube.com/watch?v=FL7ec9KQx9A)


## Inspiration 💧
COVID-19 has caused a large spike in water usage across the nation, leading to a 28% increase in our own city of New York, where two of our three team members live, and a 16% increase in shower-use nationwide. Streamy is here to help! Streamy combines music streaming and gamification to incentivize users to take shorter showers; after all, each minute taken off a shower saves 2.5 gallons of water! Streamy is saving the world’s water, one song at a time. 

## What it does 💧
Streamy has two main components: a mobile iOS app and a website. 

The iOS app mixes two usually separate components: music streaming and point-driven games to incentivize users to take shorter showers and save water. The app curates a 4-8 minute playlist for the user to bop to as they shower. If the user finishes their shower before the playlist ends, they receive a Dribblepoint in their account.

The landing website also has two main components: the home page and the water footprint calculator. The home page includes descriptions of all the features that make Streamy so fun — it also includes mockups of the app so people can view the layout. The water usage calculator allows the user to gauge an understanding of just how much water they use while showering; it asks for two input values and returns the gallons of water used each shower, each week, and how much water the user could save by cutting their shower two minutes shorter. 

## How we built it💧
Website-
Frontend: HTML | CSS
Backend: JS

iOS App- 
Swift, Firestore, Firebase (integrated to create/store/encrypt users), Xcode

## Challenges we ran into💧
Alexis spent hours on one issue with linkage between storyboards in Xcode, but was ultimately able to identify the root issue, which was just accidentally linking her UIView rather than her UIViewController! Also, this was her first time integrating sound in an iOS app, so she had to learn about AVAudioPlayer through reading documentation and experimenting. 

Grace also ran into issues when attempting to host the website on our custom domain; we routed our Github page to redirect to our domain by manipulating the DNS, but we later realized that there were issues when attempting to log onto the domain using a browser other than Safari. We ended up hosting our website using Github pages instead. 

## Accomplishments that we're proud of💧
Grace is very proud of herself for completing the water usage calculator; she had very little experience using Javascript, and since the calculator is coded primarily in Javascript, she spent a great deal of time debugging and reading up on documentation.

Alexis is very pleased with the UI design. Almost all components were thought of, customized, and made by her. She had also never built an app within one night/afternoon, so Alexis is proud of persevering through setbacks. 

As HobbyHacks was Chi’s first hackathon ever, she’s proud of herself for sticking it out and engaging with a new community. Chi is also very happy with her contribution to the story of Streamy.

## What we learned💧
Both Grace and Chi had never participated in a hackathon before, so participating in Hobbyhacks was a great learning experience for both of them. Since we were taking on both an app and a website, we learned so much about time management and how to cooperate efficiently as a team. While this was not Alexis’ first hackathon, she was reminded of how important and vital sleep is to the human body. More seriously, she learned and was reminded of some Xcode tweaks that will serve her well in the future.

## What's next for Streamy💧
The Streamy app is still in beta, but we believe there are so many different directions we can take Streamy when it enters the market someday. We are looking to implement the Spotify API in the app to allow users to link their own Spotify account; by allowing Streamy to learn about the user’s taste in music through Spotify, this further personalizes the curated playlists and improves the Streamy shower music experience.

In terms of Dribblepoints and the existing infrastructure for Streamy users, we are looking to further motivate users by introducing a social component to the app. Using Dribblepoints, we would be able to create leaderboards and offer monthly prizes. In addition, allowing users to add and track the performance of their friends on Streamy would drive downloads and allow Streamy to maintain consistent user engagement.
