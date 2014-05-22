# #encoding: utf-8

# Game.delete_all
# User.delete_all
# Favorite.delete_all
# Comment.delete_all
# Tag.delete_all
# Item.delete_all

# Tag.create({
# 	name: "outdoor"
# 	})
# Tag.create({
# 	name: "indoor"
# 	})
# Tag.create({
# 	name: "multiplayer"
# 	})
# Tag.create({
# 	name: "singleplayer"
# 	})
# Tag.create({
# 	name: "football"
# 	})
# Tag.create({
# 	name: "baseball"
# 	})
# Tag.create({
# 	name: "basketball"
# 	})
# Tag.create({
# 	name: "recreational"
# 	})
# Tag.create({
# 	name: "card"
# 	})
# Tag.create({
# 	name: "billiards"
# 	})
# Tag.create({
# 	name: "contact"
# 	})
# Tag.create({
# 	name: "competative"
# 	})
# Tag.create({
# 	name: "non-competative"
# 	})
# Tag.create({
# 	name: "all-ages"
# 	})
# Tag.create({
# 	name: "over 21 years"
# 	})
# Tag.create({
# 	name: "under 21 years"
# 	})


# Item.create({
# 	name: "baseball"
# })
# Item.create({
# 	name: "baseball bat"
# })
# Item.create({
# 	name: "basketball"
# })
# Item.create({
# 	name: "soccer ball"
# })
# Item.create({
# 	name: "hockey stick"
# })
# Item.create({
# 	name: "nerf football"
# })
# Item.create({
# 	name: "basketball net"
# })
# Item.create({
# 	name: "baseball glove"
# })
# Item.create({
# 	name: "roller blades"
# })
# Item.create({
# 	name: "soccer goal"
# })
# Item.create({
# 	name: "playing cards"
# })
# Item.create({
# 	name: "tennis ball"
# })
# Item.create({
# 	name: "tennis racket"
# })
# Item.create({
# 	name: "ping-pong ball"
# })
# Item.create({
# 	name: "ping-pong paddle"
# })
# Item.create({
# 	name: "swimming pool"
# })
# Item.create({
# 	name: "beach ball"
# })
# Item.create({
# 	name: "volley ball"
# })
# Item.create({
# 	name: "volleyball net"
# })
# Item.create({
# 	name: "wall"
# })
# Item.create({
# 	name: "roof"
# })
# Item.create({
# 	name: "hockey puck"
# })
# Item.create({
# 	name: "skateboard"
# })
# Item.create({
# 	name: "bases"
# })
# Item.create({
# 	name: "croquet mallet"
# })
# Item.create({
# 	name: "tennis net"
# })
# Item.create({
# 	name: "frisbee"
# })
# Item.create({
# 	name: "softball"
# })
# Item.create({
# 	name: "golf ball"
# })
# Item.create({
# 	name: "bicycle"
# })
# Item.create({
# 	name: "football"
# })
# Item.create({
# 	name: "hockey puck"
# })
# Item.create({
# 	name: "ice skates"
# })
# Item.create({
# 	name: "large rubber ball"
# })
# Item.create({
# 	name: "monopoly game set"
# })
# Item.create({
# 	name: "dice"
# })
# Item.create({
# 	name: "pool cue"
# 	})
# Item.create({
# 	name: "pool balls"
# 	})
# Item.create({
# 	name: "pool table"
# 	})


# User.create({
# 	name: "Keyan",
# 	email: "keyanbagheri@gmail.com",
# 	password: "password"
# 	})
# User.create({
# 	name: "Omar",
# 	email: "omar@gmail.com",
# 	password: "password"
# 	})
# User.create({
# 	name: "Cyrous",
# 	email: "cyimbigtyme34@aol.com",
# 	password: "password34"
# 	})
# User.create({
# 	name: "Tina",
# 	email: "tina@gmail.com",
# 	password: "password"
# 	})
# User.create({
# 	name: "Neel",
# 	email: "neel@gmail.com",
# 	password: "password"
# 	})
# User.create({
# 	name: "Keri",
# 	email: "keri@gmail.com",
# 	password: "password"
# 	})
# User.create({
# 	name: "Declan V",
# 	email: "declanv@gmail.com",
# 	password: "password"
# 	})
# User.create({
# 	name: "Milty",
# 	email: "milty@gmail.com",
# 	password: "password"
# 	})
# User.create({
# 	name: "PJ",
# 	email: "pj@gmail.com",
# 	password: "password"
# 	})


# Game.create({
# 	name: "Off The Roof",
# 	ig_hash_tag: "offtheroof",
# 	user_id: User.find_by_name("CYROUS").id,
# 	photo: "http://2.bp.blogspot.com/_aofQsCOJd-w/TQ_zQpGGVvI/AAAAAAAAAkU/3HpGcFsujrU/s1600/DSC_0956.jpg",
# 	blurb: "Football meets wallball",
# 	min_players: 3,
# 	min_player_age: 12,
# 	objective: "Catch the football and run it to the endzone.",
# 	gameplay: "A group gathers under the slant of a 2-3 story roof. One player throws the ball towards the middle of the roof. While waiting for the ball to return, box out your opponents. The person who catches the ball when it bounces off the roof must then turn and run towards the endzone. All other players must try to stop the ball-holder from making it to the endzone. Crossing the endzone with the ball gives you a score. First person to reach the alloted amount of points wins (total point count is agreed upon by all players)",
# 	rules: "If you get tackled, you lose",
# 	additional_information: "What you will need: Nerf football, a slanted roof (careful of large gutters)"
# 	})
# Game.create({
# 	name: "Cyopoly",
# 	ig_hash_tag: "cyopoly",
# 	user_id: User.find_by_name("CYROUS").id,
# 	photo: "http://www.rjhorne.com/Photos/Geophysical%20Exploration/Indian-Ocean_American_Salon_Playing-Monopoly.jpg",
# 	blurb: "Modified Monopoly",
# 	min_players: 2,
# 	min_player_age: 8,
# 	objective: "Be the last mogul standing. Bankrupt all other players.",
# 	gameplay: "Same gameplay as monopoly.",
# 	rules: "Added rules: 1. Craps: If a player lands on GO then they must challenge one other player to roll craps for a property, winner takes all. Each players property up for grabs is chosen by the oposing player (properties with houses/hotels on them or their ajoined color spaces are off limits). The person whos piece is on GO rolls first. First person to roll a 7 wins both properties.
# 	2. Lucky Sevens: If a player rolls seven at any time during their turn they are entitled to $100 dollars from the bank. In order to recieve this they must ask the banker for it verbally before the turn is through.
# 	3. Earnest-Goes-To-Jail: If a player lands on 'Just Visiting' while the Jail is occupied by another player, the two players switch places. If there are more than one players in jail then the one who has been in longest is set free in the switch.
# 	4. Free Parking Lotto: At the beginning of the game $500 is placed in center of board. When someone lands on Free Parking they recieve that bill along with whatever taxes/fees have been collected and placed in the center in normal gameplay. Once the first person collects Free Parking Lotto the banker will place a $100 bill in the center for the next collection. This practice will continue in one bill increments everytime counting down until the $1 bill ($ 500, 100, 50, 20, 10, 5, 1). After a 1 dollar bill has been placed onto the board and collected by a Free Parker the banker starts back at $500 placing one bill in the center everytime a player lands on Free Parking."
# 	})
# Game.create({
# 	name: "3 Bounce",
# 	ig_hash_tag: "3bounce",
# 	user_id: User.find_by_name("MILTY").id,
# 	photo: "http://s3.amazonaws.com/rapgenius/1367161689_spring_basketball.jpg",
# 	blurb: "Don't Get Caught Flat Footed",
# 	min_players: 2,
# 	min_player_age: 7,
# 	objective: "Be the first to score the set amount of points established by all players (usually 5, 7, or 10)",
# 	gameplay: "The number of players is established and an order of rotation is created and agreed upon. Whoever goes last tosses the basketball in the air for player 1 who then has up to and including 3 bounces to catch the ball, in the air, without being flat footed (feet on the ground) and shooting the ball into the basket to score a point. If the ball does not score, the next player in the rotation has the option to 'tip in' the miss for a point or let the ball hit the ground for their maximum of 3 bounces to attempt their own shot. Players do not have to attempt a basket, if it is not attainable, and can use strategy to throw the ball in an area to make it harder for the next player to score without the ball going out of bounds.",
# 	rules: "If the ball goes out of bounds on any of the three bounces then the player who last shot or bounced must then throw the ball up again.  If a player is caught with the ball in their hand and feet on the ground, they forfeit their turn and any shot does not count. They must then throw the ball up for the next player.",
# 	additional_information: "What you will need: one basketball, one basketball court"
# 	})
# Game.create({
# 	name: "Rock-Paper-Scissors-Lizard-Spock",
# 	ig_hash_tag: "rockpaperscissorslizardspock",
# 	user_id: User.find_by_name("OMAR").id,
# 	photo: "http://pad2.whstatic.com/images/thumb/f/fa/Play-Rock-Paper-Scissors-Lizard-Spock-Step-3Bullet5.jpg/670px-Play-Rock-Paper-Scissors-Lizard-Spock-Step-3Bullet5.jpg",
# 	blurb: "Live long and prosper.",
# 	min_players: 2,
# 	objective: "Out-wit your opponent",
# 	gameplay: "Your average game of Rock-Paper-Scissors, but with some bonus rules",
# 	rules: "Scissors cut paper, Paper covers rock, Rock crushes lizard, Lizard poisons Spock, Spock smashes scissors, Scissors decapitate lizard, Lizard eats paper, Paper disproves Spock, Spock vaporizes rock, Rock crushes scissors",
# 	additional_information: "What you will need: Hands"
# 	})
# Game.create({
# 	name: "Calvinball",
# 	ig_hash_tag: "calvinball",
# 	user_id: User.find_by_name("PJ").id,
# 	photo: "http://flavorwire.files.wordpress.com/2011/11/calvinball.jpg?w=600&h=400",
# 	blurb: "No sport is less organized than Calvinball! - Hobbes",
# 	min_players: 2,
# 	# max_players: 
# 	# min_player_age: 
# 	objective: "None",
# 	gameplay: "Calvinball can never be played with the same rules twice. Make up said rules as you go along. How you win is up to you, and such is the glory of Calvinball.",
# 	rules: "The rules of Calvinball are pretty easy to define because, well, there are none. Those are up to you. Just get in a wide space with a ball and start shouting out random rules; youll get the hang of it. According to Calvin, its much better than baseball.",
# 	additional_information: "Items needed: masks, 1 Calvinball (any kind of ball (but often a volleyball), anything else you decide is necessary to your Calvinball experience (see above comic for inspiration)"
# 	})
# Game.create({
# 	name: "Flonkerton",
# 	ig_hash_tag: "flonkerton",
# 	user_id: User.find_by_name("KERI").id,
# 	photo: "http://flavorwire.files.wordpress.com/2011/11/flonkerton.jpg?w=600&h=400",
# 	blurb: "Got a few extra boxes of paper lying around? How about a rousing game of Flonkerton?",
# 	min_players: 2,
# 	# max_players: 
# 	min_player_age: 7,
# 	objective: "Be the first to cross the finish line",
# 	gameplay: "Race around the room. The first player to reach the finish line is the winner of all things Flonkerton. If youre feeling extra Jim Halperty, feel free to give the winner a gold medal made out of a Yoplait top.",
# 	rules: "Each player must secure their feet to the boxes via the aforementioned flonks.",
# 	additional_information: "Items needed: 2 paper boxes per player, finish-line string"
# 	})
# Game.create({
# 	name: "Marshgammon",
# 	ig_hash_tag: "marshgammon",
# 	user_id: User.find_by_name("KEYAN").id,
# 	photo: "http://flavorwire.files.wordpress.com/2011/11/marshgammon.jpg?w=600&h=400",
# 	blurb: "It combines all the best features of all the best games Candy Land, I Never, Pictionary. Backgammon sucks. I took the only good part of Backgammon, the gammon, and I left the rest of it in the trash where it belongs. Marshall Eriksen",
# 	min_players: 3,
# 	# max_players: 
# 	min_player_age: 21,
# 	objective: "The first player to reach the end of the Candy Land board earns the chips from the pot and the winning title. The losing players must drink.",
# 	gameplay: "Each player chooses a Candy Land game piece and begins with five chips. The Candy Land game board is the primary board. If a player rolls a one, they must move one space on the Candy Land baord and spin the Twister spinner. The player to whom it points must drink and tell an embarrasing story or secret. If a player rolls a three or five,  they recieve an Autobiography Card and the person to their left must ask the roller a personal question. A player can only move the rolled number of spaces if they answer truthfully, as judged by their fellow players. If the player is judge as dishonest, they must drink and cannot move forward. If a player rolls a two, they move two spaces and Marshall Out (all their chips go into the pot) then take a shot. If a player rolls a four, they must pull a Pictionary card and draw what it says. If a person guesses correctly, both the player and the correct guess get to move ahead four spaces on the Candy Land board. The rest must drink. If no one can guess what the player is drawing, the player must drink for five seconds and may not move ahead. If a player rolls a six, they must initate a round of Never Have I Ever. The winner of the round gets to move ahead six spaces.",
# 	rules: "If a player asks, What?, the Taboo buzzer is buzzed and the player has to drink.",
# 	additional_information: "What Youll Need: Candy Land game board, Answer buzzer (typically borrowed from Taboo), Twister spinner, Poker chips, Paper pad/writing utensil, Pictionary cards (use cards from a Pictionary card box, or have each player write several drawable words or phrases on index cards), Alcohol, Dice"
# 	})
# Game.create({
# 	name: "Poohsticks",
# 	ig_hash_tag: "poohsticks",
# 	user_id: User.find_by_name("KEYAN").id,
# 	photo: "http://flavorwire.files.wordpress.com/2011/11/poohsticks.jpg?w=600&h=400",
# 	blurb: "This one is for the kids",
# 	min_players: 2,
# 	objective: "Have the first stick to reappear",
# 	gameplay: "Each player must choose a stick. Know your stick, love your stick, because youll have to recognize your stick later. Stand on a bridge in a line with your friends. All at once, drop your sticks into the water, then run to the other side of the bridge to see whose stick reappears first. And that is how you play Poohsticks.",
# 	rules: "No rules",
# 	additional_information: "What you will need: A stream/river, A bridge, A stick for each player"
# 	})
# Game.create({
# 	name: "Scrabbleship",
# 	ig_hash_tag: "scrabbleship",
# 	user_id: User.find_by_name("NEEL").id,
# 	photo: "http://flavorwire.files.wordpress.com/2011/11/scrabbleship11.jpg?w=600&h=400",
# 	blurb: "This game makes no sense. -Lisa Simpson",
# 	min_players: 2,
# 	min_player_age: 7,
# 	objective: "Destroy all your opponents battleships",
# 	gameplay: "Like in Scrabble, each player must begin by drawing 7 letter tiles.

# Each player has a sheet of graph paper where they must draw a 15 x 15 battle field to correspond with the 15 x 15 Scrabble board. Each player draws battleships on their respective grids:

# - Four one unit ships, 4 x 

# - Three two-unit-long ships, 3 x #

# - Two three-unit-long ships, 2 x ##

# - One four-unit-long ship, 1 x ###

# Carry on and play some Scrabble. As letter tiles are placed on the Scrabble board, the corresponding Battleship grid places are hit. Be sure not to put letters on your own ships corresponding places, and once a ship has been sunk by the opposing teams letters, it can be placed on the Scrabble board (as seen in the cartoon above). The Scrabble word score is added to the Battleship score for each ship hit, and landing triple letter and triple word scores double the hit score on the respective battleship. Got it? Yeah, stare at that for a while. Lisa told us it didnt make any sense.",
# 	additional_information: "What Youll Need: Scrabble board, Battleship game ships, graph paper"
# 	})
# Game.create({
# 	name: "Jiggly Ball",
# 	ig_hash_tag: "jigglyball",
# 	user_id: User.find_by_name("TINA").id,
# 	photo: "http://flavorwire.files.wordpress.com/2011/11/jiggyball.jpg?w=600&h=400",
# 	blurb: "Have a friend who doesn't know how to play Jiggly Ball? Perfect! Entice them with the mystery of the game until they volunteer to play.",
# 	min_players: 2,
# 	min_player_age: 7,
# 	objective: "There are no winners in this game, just the satisfaction of having tricked someone into Jiggly Ball.",
# 	gameplay: "Draw a large chalk circle.

# Make the volunteer stand in the center.

# Everyone on the outside of the circle throws tennis balls at the volunteer.

# Anyone who caught a Jiggle Rebound may step up to the death line (at the perimeter of the circle) and throw one last ball at the target.",
# 	additional_information: "What you will need: Tennis balls, Chalk"
# 	})
# Game.create({
# 	name: "Shy and Seek",
# 	ig_hash_tag: "hideandseek",
# 	user_id: User.find_by_name("DECLAN V").id,
# 	photo: "http://origincache-prn.fbcdn.net/10311203_1409574889322078_1577608890_n.jpg",
# 	blurb: "Spin the kicked can, hide and go tag",
# 	min_players: 4,
# 	max_players: 12,
# 	min_player_age: 13,
# 	objective: "Hang out with neighborhood girls",
# 	gameplay: "Players are arranged in a circle around a can. On the count of 3, players rush to the center, and kick the can, which is labelled with an arrow. The player to whom the can's arrow point is the kicker's target. The kicker then closes his/her eyes and counts to 10 while the other players hide. The kicker then must find the target player, and is rewarded with a kiss.",
# 	rules: "None",
# 	additional_information: "What you will need: a can with an arrow on it or a bottle"
# 	})
# # Game.create({
# # 	name: 
# # 	ig_hash_tag: 
# # 	user_id: User.all.sample.id
# # 	photo: 
# # 	blurb: 
# # 	min_players: 
# # 	max_players: 
# # 	min_player_age: 
# # 	objective: 
# # 	gameplay: 
# # 	rules: 
# # 	additional_information: 
# # 	})
# # Game.create({
# # 	name: 
# # 	ig_hash_tag: 
# # 	user_id: User.all.sample.id
# # 	photo: 
# # 	blurb: 
# # 	min_players: 
# # 	max_players: 
# # 	min_player_age: 
# # 	objective: 
# # 	gameplay: 
# # 	rules: 
# # 	additional_information: 
# # 	})