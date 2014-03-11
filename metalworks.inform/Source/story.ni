"metalworks" by Ty Suthard
[//////////DEBUG COMMANDS//////////]

When play begins: say "You wake up in a Janitor's closet after what you assume was a really long night. Not that you can remember it at all. You can barely remember anything, actually. All you know is that you work in a steelmill and that you want to quit your job in style.".
[//////////CUSTOM ACTIONS//////////]

Kicking is an action applying to one thing.
Understand "kick [something]" as kicking.
Understand "kick down [something]" as kicking.
Understand "break down [something]" as kicking.
Understand "punch [something]" as kicking.
Understand "break [something]" as kicking.
Understand "bash down [something]" as kicking.

[//////////JANITOR'S CLOSET//////////]

The Janitor's Closet is a room. The description is "A Janitor's closet, just roomy enough for a body to pass out comfortably in. In the corner is the usual mop, there are some crumpled papers scattered around, and there's a large shelf with what looks like lots of cleaning supplies. To your south you can see a door.".

The crumpled paper is scenery in the Janitor's Closet. The description is "Some crumpled paper. There's actually not much to say about this. It's not really that interesting.[if the player is in the office] De ja vu?[end if].".

Understand "papers" as crumpled paper.
Understand "paper" as crumpled paper.

Instead of taking the crumpled paper:
	say "You see no reason to put any trash in your pocket.".

The Shelf is scenery in the Janitor's Closet. It is an open openable container. It is unlocked and lockable. The description is "A large handy shelf full of things. There are plenty of cleaning supplies here. "

The Mop is scenery in the janitor's closet. The description is "A mop, complete with the weird fuzzy end. You muse that 'it's like a water broom.'".

Instead of taking the mop:
	say "While I'm certain that you think you'd look cool if you waved around a mop, there's no real reason for you to take it with you.".

The Cleaning Supplies is in the Shelf. The description is "[if the Cleaning Supplies is in the Shelf] A plethora of cleaning supplies. You pick a few up to look at them and notice that many of them contain ethanol. Maybe this could come in handy if you want to 'go out with a bang' like you said.[end if][If the player is carrying the Cleaning Supplies] To any normal janitor this would be simple bottle of blue cleaning fluid, but in your eyes, you see lighter fluid! This ought to provide some pretty nice flames. The label on the back says the bottle contains lots of ethanol, a flammable molecule.[end if]"

The Label is a thing. The description is "According to this white rectangle, this bottle of cleaning fluid contains a fair amount of ethanol. Your instincts from 8th Grade chemistry tell you that this is flammable."

Instead of taking the Cleaning Supplies:
	say "You stick one bottle of the stuff into one of the bigger pockets in your cargo shorts. The back of it has a label listing the chemicals it contains.";
	move Cleaning Supplies to the player.;
	move the label to the player.

The Door to the Janitor's Closet is a closed openable door. ">". It is locked and lockable. The Door to the Janitor's Closet is south of the Janitor's Closet and north of the Hallway. The description is "A pretty plain wooden door. [if the door is closed]It's locked, but it doesnt look that strong. Perhaps you could… break it down? I'm sure no one would mind.[end if]".

Check examining:
	if the noun is the janitor's closet door:
		if the janitor's closet door is open:
			change the description to "That door was no match for you in the slightest.".


After kicking the Door to the Janitor's Closet:
	now the Door to the Janitor's Closet is open.;
	say "You give a mighty kick towards the Door and it swings open wide for you, sending a few splinters your way. You can see a hallway to your south now.";
	move the splinters to the janitor's closet.
	
Some splinters are a thing. The description is "Tiny wooden fragments from after you kicked down that door to the janitor's closet. Tiny and insignificant. Like earth in comparison to the rest of the galaxy! How wonderful.".

Instead of taking the splinters:
	say "You bend down to pick a few up when you realize that what you are doing makes absolutely no sense.".

Check going south:
	if the player is in the Janitor's Closet:
		if the Door to the Janitor's Closet is closed:
			say "Uh, the door's locked. Darn. Looks like you'll have to come up with more creative ways to get out of here." instead.;
		if the Door to the Janitor's Closet is open:
			if the player is not carrying the cleaning supplies:
				say "Wait! Are you sure you have everything you might need from this room?" instead.
			
Check going north: 
	if the player is in the Janitor's Closet:
		say "You casually walk into the wall." instead.
		
Check going east:
	if the player is in the Janitor's Closet:
		if the player is not carrying the mop:
			say "You take a few paces and trip over a mop in the corner." instead.;
		if the player is carrying the mop:
			say "After a few steps you trip over your own feet." instead.
		
Check going west:
	if the player is in the Janitor's Closet:
		say "You take a few confident steps, right into the shelf." instead.
		
Instead of attacking:
	if the player is in the janitor's closet:
		say "Maybe you should try kicking down the door instead?" instead.


[////////////////////////////////////////END JANITOR'S CLOSET//////////////////////////////////////]
[////////////////////////////////////////HALLWAY START///////////////////////////////////////////]

The Hallway is a room. It is south of the Janitor's Closet Door. The description is "A pretty boring hallway. You can see a window peering into an office to the west and a sign on your left."

The window is scenery in the hallway. The description is "Through the window you can see into what looks like your boss's office. You can't see much in there except for a desk and a trash bin.".

Understand "office" as the window.

The sign is scenery in the Hallway. The description is "This sign labels the metalworking gear room to your East. It is orange."

Check going north:
	if the player is in the hallway:
		say "You don't really have any reason to go back there." instead.
[//////////////////////////////////////////OFFICE START////////////////////////////////////////////]

The Office is a room. It is west of the Hallway. The description is "You'd be hard pressed to find an office room more standard than this. You can see a trash bin and a plain wooden desk. You never really expected your boss to be very interesting anyways. To your East is the Hallway.".

The desk is scenery in the Office. The description is "A boring, wooden desk. There's literally nothing special about it, but there is an open drawer."

The drawer is scenery in the Office. It is an open openable container. The description is "An equally boring drawer for the boring desk."

The $20 bill is a thing in the drawer. "Twenty big ones. Nice find."

Instead of taking the $20 bill:
	say "You stick this sweet cash in your pocket for later." instead.;
	move the $20 bill to the player.

Understand "money" as the $20 bill.
Understand "20 dollars" as the $20 bill.

The trash bin is scenery in the Office. The description is "A standard metal trash can with some crumpled papers inside. Not a whole lot going on here.".

After examining the trash bin:
	move the crumpled paper to the office. [cheeky way of not making a new description for an item]
	
[//////////OFFICE END//////////]

[//////////GEAR ROOM START//////////]

The Gear Room is a room. It is east of the hallway. The description is "This gear room would be a lot like a locker room if there were any lockers. You can see a red button in the corner of the room next to a large steel door, and some metalworking clothes in another corner. The steel door is to the south."

The steel door is a closed lockable door. ">". It is locked and lockable. It is south of the Gear Room and north of the Catwalk. The description is "A heavy, solid steel door. Unlike the door for the janitor's closet, there's no way you'll be able to kick this one down."

The button is a thing in the Gear Room. ">". The button can be pressed. The description is "A big shiny red button next to the big steel door. I wonder what it does?"

Instead of pushing the button:
	say "With a mighty tap, you depress the red button, such that it activates a mechanism, triggering a response in an electrical system, which in return activates the motors connected to the steel door, raising said door, revealing a passage to a catwalk to your south.";
	now the steel door is open.
	
Understand "red button" as button.


Some metalworking gear are a thing in the Gear Room. ">". The Metalworking Gear can be worn. The description is "Some heavy duty metalworking clothes, capable of keeping you cool in temperatures up to 500 degress celsius."

Understand "clothes" as metalworking gear.

Instead of taking the metalworking gear:
	move the metalworking gear to the player.;
	say "Since you don't exactly have any means of carrying these bulky clothes, you decide to put them on instead." instead. [couldnt get wearing clothes to work, this will have to do B)]
	
	


Check going south:
	if the player is in the gear room:
		if the steel door is open:
			if the player is not carrying the metalworking gear:
				say "You should take that metalworking gear before you leave here first." instead.
			
Check going south:
	if the player is in the gear room:
		if the steel door is closed:
			say "The, uh, steel door is closed, bud. There's probably an obvious way of opening it that you somehow missed." instead.
			

[//////////GEAR ROOM END//////////]

[//////////CATWALK START//////////]

Check going north:
	If the player is in the catwalk:
		say "You'd rather get out of steel mill than retreat into the gear room." instead.

The Catwalk is a room. It is south of the Steel Door. "You find yourself on a large catwalk outside of the gear room. Unfortunately you can see your boss here, but you can also see an escape route to your west in the form of a stairwell."

The Boss is a man in the Catwalk. ">". The description of the boss is "Your boss. The last thing you want to do is get talked to by him. You'd better get out of here."

The stairwell is an open unopenable door. ">". It is west of the Catwalk and east of the main floor. The description is "Some plain old metal stairs to your west. They lead down to the main floor of the steel mill."

Instead of talking to the boss:
	say "No! You're literally asking for a conversation this way (You DON'T want that to happen, fyi)." instead.

After examining the boss:
	if the player is in the main floor:
		say "You can see him staring at you, a tad perplexed as to why you ran off, but none the less, coming down to talk to you." instead.;
	If the player is in the west floor:
		say "You can see your boss coughing and flailing wildly through the huge cloud of smoke you created. That bought you a decent amount of time to plot the next part of your daring escape." instead.;
	if the player is in the ruined room:
		say "You see your boss, his mouth agape, staring at the destruction you just caused. He doesn't look to pleased." instead.;
	If the player is in the crane catwalk:
		say "You see your boss stumbling through the debris trying to catch up to you. He looks like he's having some trouble." instead.;
	if the player is in the metal bucket:
		say "You can see your boss staring at you, his jaw dropped, mouthing the words 'Get down from there'. You think nothing of it." instead.
		[this was supposed to work, but it didn't boo hoo. if i have more time at some point, i might make it so that you can see him between rooms]


[//////////CATWALK END//////////]

[//////////MAIN FLOOR PUZZLES//////////]

Firing is an action applying to two things.
Understand "burn [something] with [something]" as firing.
Understand "light [something] with [something]" as firing.
Understand "torch [something] with [something]" as firing.
Understand "light [something]" as firing. [because burning was taken]

Using is an action applying to one thing.
Understand "use [something]" as using. [because this isnt a default command for some reason]

[//////////MAIN FLOOR START//////////]

Things can be turned on or off. Things are usually off.

The Main Floor is a room. It is west of the stairwell. The description is "The main metalworking floor. Things are starting to look very industrial what with the grey interior and everything. And the grey walls. And the grey everything, really. To your west is another part of the floor."

The blowtorch is a device in the Main Floor. "In here you can see an blowtorch. Someone must've left it here.". blowtorch is off. The description is "A blowtorch.[if the blowtorch is turned on] Presently, there are flames spewing out the top of it at over 500 degrees celsius.[end if] It can be switched on and off by a valve near the nozzle."

Some cigarettes are a thing in the Main Floor. "You [if the player is not carrying the blowtorch]can also[end if] see a pack of cigarettes on the ground.". The description is "A pack of 'Marble' cigarettes. Ever since they found the loophole in placing warning labels, they're now covered with the label of 'WARNING: Smoking is AWESOME.'" 

Understand "cigs" as cigarettes.
Understand "pack of cigarettes" as cigarettes.

After taking the blowtorch:
	if the player is in the main floor:	
		say "You come up with some creative ideas for a way to hold the tool, when you just decide to hold it in your hands.";
		say "[If the player is carrying the cigarettes] Your boss is catching up. You'd better come up with some creative way to get out of his sight. Try thinking about some of the things you just picked up.[end if]".;

Understand "torch" as blowtorch.
Understand "blow torch" as blowtorch.

After taking the cigarettes:
	say "You pick up the cigarettes and attempt to stick one in your mouth, when you realize that you're wearing a helmet. You put the rest in your back pocket.";
	if the player is in the main floor:
		say "[if the player is carrying the blowtorch] Your boss is catching up. You'd better come up with some creative way to get out of his sight. Try thinking about some of the things you just picked up.[end if]".

Check going east:
	If player is in Main Floor:
		say "Dude, your boss is literally climbing down the stairs to talk to you, do you actually want to talk to him?" instead.

The ashpile is a thing. The description is "Some ashes from your burning of those cigarrettes. You still have plenty of cigarrettes leftover though."

Check firing:
	if the player is in the Main Floor:
		if the noun is the cigarettes:
			if the second noun is the blowtorch:
				If the blowtorch is switched on:
					say "You create a large plume of smoke, distracting your boss and masking your location temporarily. You can use this newfound time to escape to your west.";
					move the ashpile to the player.;
					change the blowtorch to off.; [combining two items with an action to create smoke]
					
		

Check firing:
	if the player is in the Main Floor:
		if the noun is the cigarettes:
			if the second noun is the blowtorch:
				if the blowtorch is switched off:
					say "You, uh, need to switch on the blowtorch to burn things.". [more condescending responses!]
			
Check going west:
	if the player is in the Main Floor:
		if the player is not carrying the ashpile:
			say "You can't head west yet, not while in plain sight. You need to create a distraction somehow to get away from your boss.[if the player is carrying the cigarettes]Those cigarettes you picked up look like they could be useful…[end if][if the player is not carrying the blowtorch] You should probably take that blowtorch as well.[end if]" instead.;
		if the player is carrying the ashpile:
			move Boss to the Main Floor;
			say "You manage to get out of the Main floor before the boss catches up to you, thanks to the cloud of smoke you just created."
			[ashpile is essentially an unobtainable key, until after you use the cigs and the torch, which lets you go west]



[//////////MAIN FLOOR END//////////]

[EXPLOSIVE BARREL PUZZLE ELEMENTS]

Pouring is an action applying to two things.
Understand "pour [something] on [something]" as pouring.

Throwing is an action applying to two things.
Understand "throw [something] at [something]" as throwing.
Understand "toss [something] at [something]" as throwing.

Things can be destroyed or prestine. Things are usually prestine.

Thinking about is an action applying to one thing. [this command was fun to play with]
Understand "think about [something]" as thinking about.
Understand "ponder [something]" as thinking about.

[//////////WEST FLOOR START//////////]

The west floor is a room. It is west of the Main floor. The description is "You relocate yourself the other half of the Main Floor, handsomely titled, the West Floor. Of course, you have the equally drab furnishing of grey, absolutely everywhere here as well.[if the cinderblock wall is prestine] There is not a lot going on here, save for some propane tanks stacked up against a cinderblock wall.[end if]"

Some Propane tanks are scenery in the West floor. "Some propane tanks. It's actually a bit odd that we left them on the main working floor. Who knows what sort of explosive capability they have?"

The cinderblock wall is scenery in the West Floor. It is prestine. The description is "[If the cinderblock wall is prestine] A cinderblock wall. Chances are it's not the strongest, it IS only made out cement or something anyways.[end if][if the cinderblock wall is destroyed] A gaping hole to the south is all that remains of the wall that was once here.[end if]".

After examining the cinderblock wall:
	if the cinderblock wall is prestine:
		say "This is going to need some serious thinking to be able to get past here. Thinking. Maybe you need to THINK ABOUT some things. Things that are in this room in particular. Do you feel me?".

Check throwing:
	if the player is in the west floor:
		if the noun is blowtorch:
			if the second noun is propane tanks:
				if the blowtorch is switched on:
					say "Within seconds of the blowtorch reaching the tanks, they ignite and create a large explosion, destroying the wall.";
					change cinderblock wall to destroyed.;
					remove the blowtorch from play.;
					remove the propane tanks from play.;
				If the blowtorch is off:
					say "You decide to throw around your blowtorch while it's turned off. Uh, alright. Are you feeling OK?".
				[after this, the player can leave the west floor and go south.]


Check dropping:
	if the noun is the blowtorch:
		say "Did you mean to throw this at something?" instead.

Check firing:
	if the player is in the west floor:
		if the noun is propane tanks: [if statements B)]
			if the second noun is blowtorch:
				if the cinderblock wall is prestine:
					if the blowtorch is switched off:
						say "Even if you had the blowtorch turned on, using it this close to the propane tanks would result in a fairly gruesome death. You should consider some way of igniting the tanks from further away.";
					if the blowtorch is switched on:
						say "Luckily for you, common sense kicks in and you somehow decide not to light the propane tanks right next to you. You should consider other ways of igniting the tank from further away.".;
						change the blowtorch to off.;
						say "You should discourage yourself from trying that again.".;
				if the cinderblock wall is destroyed:
					say "What propane tanks?". [me being paranoid about people examing or trying to do the same command twice. i dont see why you would, but whatever.]

The trail of cleaning supplies is scenery. The description is "The trail of cleaning supplies you poured on the ground. If you ignite it, it should blow up those propane tanks.".

Check pouring:
	if the noun is cleaning supplies:
		if the second noun is propane tanks:
			say "Your pour a trail of cleaning fluid from the propane tanks along the floor, giving you some distance away from the propane tanks.";
			move trail of cleaning supplies to the west floor.;
			remove the cleaning supplies from play.
			Understand "cleaning supplies" as trail of cleaning supplies.
		
Check firing:
	if the noun is trail of cleaning supplies:
		if the second noun is blowtorch:
			if the blowtorch is switched on:
				Change the cinderblock wall to destroyed.;
				remove the propane tanks from play.;
				remove the cleaning supplies from play.;
				remove the trail of cleaning supplies from play.;
				say "The trail of cleaning supplies burns and leads up to the propane tanks, like a fuse of sorts. They propane tanks eventually ignite, and blast a gaping hole in the cinderblock wall, leading to another room directly south.".;
			if the blowtorch is switched off:
				say "This isn't going to accomplish much with the blowtorch switched off.". [second way of solving the same puzzle]
			
Instead of burning the trail of cleaning supplies:
	say "Did you mean to light the trail of cleaning supplies with something?".
	

Check going south:
	if the player is in the west floor:
		if the cinderblock wall is destroyed:
			say "You proceed to move into the rubble.";
			move Boss to the West Floor.;
			say "Your boss arrives in the West Floor to assess the havok you just caused. ";
			move player to the ruined room instead.;
		if the cinderblock wall is prestine:
			say "The cinderblock wall is nice and everything, but why are you trying to walk into it?" instead.
			
Check going west:
	if the player is in the west floor:
		say "What is up with you and walking into walls?" instead.
		
Check going north:
	if the player is in the west floor:
		say "This time you manage to stop yourself before you hit your forehead on the concrete." instead.
		
Check going east:
	if the player is in the west floor:
		say "Your boss is still close behind you, you don't want to talk to him.".

Check thinking about:
	if the player is in the west floor:
		if the noun is propane tanks:
			say "Alright, propane is flammable. You need to ignite it somehow, but you can't stand next to it while you do so, that will surely blow your arm off… Maybe you have something on you that you can use to ignite it from a distance?".
			
Check thinking about:
	if the player is in the west floor:
		if the noun is the cleaning supplies:
			say "Hmm… these cleaning supplies contain a lot of ethanol. Perhaps if you poured a trail, you could ignite the propane tanks from a safe distance.".
			
Check thinking about:
	if the player is in the west floor:
		if the noun is the blowtorch:
			say "This blowtorch can make things really, really, hot. Enough to ignite anything that you can see, really. If you threw it next to a propane tank while it was turned on, you could probably set them off. Or you could do the sensible thing, and ignite them using some other method.".;
	if the player is not in the west floor:
		if the player is not in the main floor:
			if the noun is blowtorch:
				say "You know, if you get out of here, this could make a pretty neat souvenier.";
	if the player is in the main floor:
		If the noun is blowtorch:
			if the player is not carrying the ashpile:
				say "This thing makes fire… Where there is fire, there is…";
			if the player is carrying the ashpile:
				say "You mentally pat yourself on the back for being such a genius.". [this looks complicated, but it's not. i promise. its just different responses for 'think about x' in different places]

Check thinking about:
	if the player is not in the main floor:
		if the noun is cigarettes:
			say "You always knew that cigarettes were bad for you health, but have always simultaneously thought that people looked approximately 30% cooler when they had one sticking out of their mouth.".;
	if the player is in the main floor:
		if the noun is cigarettes:
			if the player is not carrying the ashpile:
				say "Well you have in your hands what a lot of people call smokes. Smoke is generally good at hiding things. Where there is smoke there is fire. Hmmm…".;
			if the player is carrying the ashpile:
				say "Hey, that worked! Nice.".
		
Check thinking about:
	if the noun is ashpile:
		say "Huh, this ashpile must've followed you along after you burnt a few of those cigarettes. Odd.".
		
Check thinking about:
	if the noun is label:
		say "The only thing you can remember the label saying was that it contained flammable ethanol.".
		
Check thinking about:
	if the player is in the west floor:
		if the noun is the cinderblock wall:
			if the cinderblock wall is prestine:
				say "Well, in order to not be cornered by your boss, you need to take down this wall. Those propane tanks definitely have the explosive capability to do such, it's just a matter of igniting them…".;
			if the cinderblock wall is destroyed:
				say "You can't help but be grateful for the fact that absolutely none of the shrapnel hit you. You are seriously lucky. Wow.".
[//////////WEST FLOOR END//////////]

[//////////THE RUINED ROOM START//////////]

The ruined room is a room. It is north of the crane stairwell. "This place is ruined. There's debris everywhere, but the stairwell to your south is still standing, so that's nice."

The debris is scenery in the ruined room. The description is "There's not much else in here except for the scattered remains of the cinderblock wall you just destroyed. Good thinking back there, by the way, you deserve a real pat on the back."

The Crane Stairwell is a door. It is open and unopenable. ">". It is south of the ruined room and north of the Crane Catwalk. The description is "Some more metal stairs, for your climbing pleasure. It looks like it leads up to a crane catwalk near the large buckets full of molten steel.".

Check going north:
	if the player is in the ruined room:
		say "Going back that way would only result in getting talked to by your boss.".
		

[//////////Ruined room end//////////]

[//////////crane catwalk start//////////]

Mood is a kind of value. The moods are Pissy and Chill. People have mood. The mood of the Crane Operator is pissy.

Talking to is an action applying to one thing.
Understand "talk to [something]" as talking.

the Crane Catwalk is a room. It is south of the crane stairwell. The description is "You climb up the stairs and find yourself on yet another catwalk. There are some crane controls that control the metal bucket to your east at one end and a crane operator at the other."

The Crane Operator is a man in the crane catwalk. "[if the crane operator is pissy] The crane operator gives you a cold stare from across the catwalk.[end if][if the crane operator is chill] The crane operator ignores you entirely.[end if]". The Crane Operator is pissy. The description of the crane operator is "The crane operator here looks like he operates the crane controls located on this catwalk. He looks like he's a pretty cool guy.[if the mood of the Crane Operator is pissy] No, wait, he actually looks pretty stingy about something.[end if]"

Instead of talking to the Crane Operator:
	say "He doesn't say much back to you other than some mumbling about expensive bills and that he wishes he had a smoke." instead.

Some Crane Controls are scenery in the Crane Catwalk. The description is "It looks like these levers and buttons and whatnot control crane carrying the huge flaming metal bucket full of molten steel."

The big window is scenery in the crane catwalk. "[if the player is in the crane catwalk]You can see a large window across from the catwalk. It seems as though the metal bucket moves near it when in operation.[end if][if the player is in the metal bucket] You can see the big window peering into the outside world. Escape! You are so close now![end if]".

Check using:
	if the noun is Crane Controls:
		if the mood of the Crane Operator is pissy:
			say "The crane operator yells something incomprehensible at you about cigarettes and money and pushes you away from the controls.";
		if the mood of the Crane operator is chill:
			say "The crane operator is too busy smoking to care about all the safety rules you're violating right now. You see the steel bucket start moving back and forth, first closer to you, then back over to the big window.".
			
Instead of giving the cigarettes to the crane operator:
	say "The crane operator takes your cigs and looks pretty happy now. He's too busy smoking to prevent you messing with his stuff at this point.";
	change the mood of the crane operator to chill.;
	remove the cigarettes from play;
	change the description of the crane operator to "It's the crane operator. He looks pretty chill now that you've given him those cigarettes you found on the floor.". [i give credit for this piece of code to room a-221 tutorial]

Instead of giving the $20 bill to the crane operator:
	say "The crane operator graciously takes your money out of your hands and looks pretty happy now. He agrees to let you use the crane controls.";
	change the mood of the crane operator to chill.;
	remove the $20 bill from play;
	change the description of the crane operator to "It's the crane operator. He giggling like a schoolgirl now that he's got that $20 bill in his hands.". [i remove the $20 bill, but for no real reason]
	
After using the crane controls:
	say "Now, there's only one logical course of action. You need to jump on the steel bucket to escape.".

The steel bucket is scenery in the crane catwalk. The description is "A flaming bucket full of molten steel. The rail that bucket is hanging from is part of the crane, and it looks like it can move back and forth near the big window you can see behind it.".

Diving is an action applying to one thing.
Understand "jump on [something]" as diving.
Understand "jump through [something]" as diving.
Understand "dive through [something]" as diving.

Check diving:
	if the player is in the Crane Catwalk:
		If the noun is steel bucket:
			if the player is carrying some Metalworking Gear:
				say "You leap on to the lip of the bucket, the hot steel searing your metalworking clothes slightly.";
				move player to Metal Bucket.;
				move the big window to Metal Bucket.;
	If the player is in the Metal Bucket:
		if the noun is big window:
			say "You use all of your strength to leap as far and fast as you can off of the metal bucket through the large window, shattering the glass and sending you from your 40 foot freefall into a dumpster.";
			move player to the dumpster.
			
Check going east:
	if the player is in the crane catwalk:
		say "You can't exactly go that way, but you can look at the crane controls and the bucket here." instead.
		
Check going west:
	if the player is in the crane catwalk:
		say "You walk up to the crane operator, who is also on the crane catwalk." instead.
		
Check going south:
	if the player is in the crane catwalk:
		say "You nearly walk off the side of the catwalk before the railing stops you in your tracks." instead.
		
Check going north:
	if the player is in the crane catwalk:
		say "Stop trying to go closer to your boss! You're almost out of here, anyways." instead.
		[since there are like, a million 'check' sequences, I'll give the credi to devon, he was the biggest help out of any resource i could find]
		
The railing is scenery in the crane catwalk. The description is "Metal railing, prevent lemmings from suicide since whenever.".

Understand "guard rail" as railing.

[//////////END CRANE CATWALK//////////]

[//////////START METAL BUCKET//////////]

The metal bucket is a room. The description is "You are literally standing on the rim of a huge flaming metal bucket. I hope you feel good about yourself, for this is the day that you show your boss that you can be whoever you want to be, albeit with your shoes melting and on fire. Seriously though, you probably shouldn't stand up here for too much longer if you don't want your metalworking gear to fail. Luckily, the crane seems to be moving your bucket nearer to the big window. Now, the rest of your escape goes according to simple physics.".

The dumpster is a room. "A wonderful dumpster. It looks like you successfully made it out of the steel mill without letting your boss talk to you."

The rat is a thing in the dumpster. "Oh look, a rat.". The description is "A rat. He seems pretty content with you sitting there. He probably wouldn't mind to much if you picked him up actually."

Understand "pick up [something]" as taking. [this is somehow not a default synonym in inform]

After taking rat:
	say "'Squeak'" instead.;
		Move rat to player.
	
Use no scoring.

An every turn rule:
if the player is carrying the rat,
end the game in victory.

[im done writing comments i want nothing to do with this game anymore.]



