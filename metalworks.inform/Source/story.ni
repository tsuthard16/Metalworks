"metalworks" by Ty Suthard
[//////////DEBUG COMMANDS//////////]
Hopefully i can get a teleport command in here eventually so it's easier to test this darn thing.

[//////////CUSTOM ACTIONS//////////]

Kicking is an action applying to one thing.
Understand "kick [something]" as kicking.
Understand "kick down [something]" as kicking.
Understand "break down [something]" as kicking.

[//////////JANITOR'S CLOSET//////////]

The Janitor's Closet is a room. The description is "A Janitor's closet, just roomy enough for a body to pass out comfortably in. In the corner is the usual mop, there are some crumpled papers scattered around, and there's a large shelf with what looks like lots of cleaning supplies. To your south you can see a door."

The crumpled paper is scenery in the Janitor's Closet. The description is "Some crumpled paper. There's actually not much to say about this. It's not really that interesting."


The Shelf is scenery in the Janitor's Closet. It is an open openable container. It is unlocked and lockable. The description is "A large handy shelf full of things. There are plenty of cleaning supplies here. "

The Mop is a thing in the Janitor's Closet. "..." The description is "A mop, complete with the weird fuzzy end. You muse that 'it's like a water broom.'"

The Cleaning Supplies is in the Shelf. The description is "[if the Cleaning Supplies is in the Shelf] A plethora of cleaning supplies. You pick a few up to look at them and notice that many of them contain ethanol. Maybe this could come in handy if you want to 'go out with a bang' like you said.[end if][If the player is carrying the Cleaning Supplies] To any normal janitor this would be simple bottle of blue cleaning fluid, but in your eyes, you see lighter fluid! This ought to provide some pretty nice flames.[end if]"

The Label is a thing. The description is "According to this white rectangle, this bottle of cleaning fluid contains a fair amount of ethanol. Your instincts from 8th Grade chemistry tell you that this is flammable."

Instead of taking the Cleaning Supplies:
	say "You stick one bottle of the stuff into one of the bigger pockets in your cargo shorts. The back of it has a label listing the chemicals it contains.";
	move Cleaning Supplies to the player.;
	move The label to the player.

The Door to the Janitor's Closet is a closed lockable door. "..." It is locked and lockable. The Door to the Janitor's Closet is south of the Janitor's Closet and north of the Hallway. The description is "A pretty plain wooden door. [if the door is closed]It's locked, but it doesnt look that strong.[end if][if the door is open] That door was no match for you in the slightest.[end if]"

After kicking the Door to the Janitor's Closet:
	now the Door to the Janitor's Closet is open.;
	say "You give a mighty kick towards the Door and it swings open wide for you, sending a few splinters your way. You can see a hallway to your south now."

[////////////////////////////////////////END JANITOR'S CLOSET//////////////////////////////////////]
[////////////////////////////////////////HALLWAY START///////////////////////////////////////////]

	
The Hallway is a room. It is south of the Janitor's Closet Door. The description is "A pretty boring hallway. You can see a window peering into an office to the west and a sign on the right."


[//////////////////////////////////////////OFFICE START////////////////////////////////////////////]

The Office is a room. It is west of the Hallway. The description is "You'd be hard pressed to find an office room more standard than this. You can see a wheely chair, a trash bin, and a small filing cabinet, right next to the plain wooden desk."

The desk is scenery in the Office. The description is "A boring, wooden desk. There's literally nothing special about it, but there is a closed drawer."

The drawer is scenery in the Office. It is an open openable container. The description is "An equally boring drawer for the boring desk."

The $20 bill is a thing in the drawer. "Twenty big ones. Nice find."

Understand "money" as the $20 bill.
Understand "20 dollars" as the $20 bill.

[//////////OFFICE END//////////]

[//////////GEAR ROOM START//////////]

The Gear Room is a room. It is east of the hallway. The description is "This gear room would be a lot like a locker room if there were any lockers. You can see a red button in the corner of the room next to a large steel door, and some metalworking clothes in another corner. There's a sign to the south next to the steel door."

The steel door is a closed lockable door. It is locked an lockable. It is south of the Gear Room and north of the Catwalk. "A heavy, solid steel door. Unlike the door for the janitor's closet, there's no way you'll be able to kick this one down."

The button is a thing in the Gear Room. The button can be pressed.

Instead of pushing the button:
	say "With a mighty tap, you depress the red button, such that it activates a mechanism, triggering a response in an electrical system, which in return activates the motors connected to the steel door, raising said door, revealing a passage to a catwalk to your south.";
	now the steel door is open.

[//////////GEAR ROOM END//////////]

[//////////CATWALK START//////////]

Check going north:
	If the player is in the catwalk:
		say "You'd rather get out of here than retreat into the gear room." instead.

The Catwalk is a room. It is south of the Steel Door.

The stairwell is an open unopenable door. It is west of the Catwalk and east of the main floor.

[//////////CATWALK END//////////]

[//////////MAIN FLOOR PUZZLES//////////]

Using is an action applying to two things.
Understand "use [something] with [something]" as using.
Understand "burn [something] with [something]" as using.
Understand "light [something] with [something]" as using.
Understand "use [something]" as using.

[//////////MAIN FLOOR START//////////]

Things can be turned on or off. Things are usually off.

The Main Floor is a room. It is west of the stairwell.

The blowtorch is a device in the main floor. "…". blowtorch is off. The description is "A blowtorch.[if the blowtorch is turned on] Presently, there are flames spewing out the top of it at over 500 degrees celsius.[end if] It can be switched on and off by a valve near the nozzle."

Some cigarettes are a thing in the Main Floor. "…". The description is "A pack of 'Marble' cigarettes. Ever since they found the loophole in placing warning labels, they're now covered with the label of 'WARNING: Smoking is AWESOME.'" 

Instead of taking blowtorch:
	say "[If the player is carrying the cigarettes] Slow boss catch up go fast[end if].";
	move blowtorch to player.;
	say "You come up with some creative ideas for a way to hold the tool, when you just decide to hold it in your hands"

Instead of taking the cigarettes:
	say "[if the player is carrying the blowtorch] Slow boss catch up go fast[end if].";
	move cigarettes to player.;
	say "You pick up the cigarettes and stick one in your mouth, not that you'd ever smoke it, you just figured you looked cooler that way."

Check going east:
	If player is in Main Floor:
		say "you don't really feel like going that way right now." instead.

Check using:
	if the noun is cigarettes:
		if the noun is blowtorch:
			If the blowtorch is switched on:
				say "yeahyeahitworks burn, burn burn. you can go east now.";
			if the blowtorch is off:
				say "you need fire to burn things.".
			
	
[//////////MAIN FLOOR END//////////]

[EXPLOSIVE BARREL PUZZLE ELEMENTS]

Pouring is an action applying to two things.
Understand "pour [something] on [something]" as pouring.

Throwing is an action applying to two things.
Understand "throw [something] at [something]" as throwing.

Things can be destroyed or prestine. Things are usually prestine.


[//////////WEST FLOOR START//////////]

The west floor is a room. it is west of the Main floor.

Some Propane tanks are scenery in the West floor. "Some propane tanks. It's actually a bit odd that we left them on the main working floor. Who knows what sort of explosive capability they have?"

The cinderblock wall is scenery in the West Floor. It is prestine. The description is "[If the cinderblock wall is prestine] A cinderblock wall. Chances are it's not the strongest, it /i/is/i/ only made out cement or something anyways.[end if][if the cinderblock wall is destroyed] A gaping whole is all that remains of the wall that was once here.[end if]"

Some propane tanks are a thing in the west floor.

Check throwing:
	if the noun is blowtorch:
		if the noun is propane tanks:
			if the blowtorch is switched on:
				say "woooow look at it go booom, whoohooo";
				change cinderblock wall to destroyed.;
				remove the blowtorch from play.;
				remove the propane tanks from play.;
			If the blowtorch is off:
				say "wat r u doin m8. throwing things around like a crazy person.".
				
The trail of cleaning supplies is scenery. The description is "some cleaning fluid. nice and flammable."

Check pouring:
	if the noun is cleaning supplies:
		if the noun is propane tanks:
			say "you make a trail of what would be lighter fluid if it wasnt cleaning liquid.";
			move trail of cleaning supplies to the west floor.
			
Check using:
	if the noun is blowtorch:
		if the noun is trail of cleaning supplies:
			if the blowtorch is switched on:
				say "BUUURN BUUUURN BUUUUUUUUUURN AHAHAHAHAHA".

	
Check going south:
	if the player is in the west floor:
		if the cinderblock wall is destroyed:
			say "you proceed to move into the rubble.";
			move the player to the ruined room.;
		if the cinderblock wall is prestine:
			say "why are you trying to walk into a wall".
[//////////WEST FLOOR END//////////]

[//////////THE RUINED ROOM START//////////]

The ruined room is a room. It is north of the crane stairwell. "This place is ruined."

The debris is scenery in the ruined room. "There's dirt and dust and junk. you duly note that cinderblock walls are not strong enough to withstand the explosion of several propane tanks and decide that there are better building supplies for your home."

The Crane Stairwell is a door. It is open and unopenable. It is south of the ruined room and north of the Crane Catwalk.

Check going north:
	if the player is in the ruined room:
		say "Going back that way would only result in getting talked to by your boss.".

[//////////Ruined room end//////////]

[//////////crane catwalk start//////////]

Mood is a kind of value. The moods are Pissy and Chill. People have mood. The mood of the Crane Operator is pissy.

Talking to is an action applying to one thing.
Understand "talk to [something]" as talking.

the Crane Catwalk is a room. It is south of the crane stairwell.

The Crane Operator is a man in the crane catwalk. The Crane Operator is pissy. "The dude is a dude in the dude area of the crane catwalk. he looks like a pretty decent bro.[if the mood of the Crane Operator is pissy] No, wait, he actually looks pretty pissed off about something.[end if]"

[uh this was mostly testing]
Instead of talking to the Crane Operator:
	say "GIMME A CIGARETEE YOU AJKLJKL;ZJKFKADJOFL3QI";
	say "you reply with omg stfu you weirdo go jump in that flaming metal bucket";
	say "the dude pushes you into a fire";
	say ".
	..
	…
	….
	…..
	……
	…….
	not really though, keep playing."

Some Crane Controls are scenery in the Crane Catwalk. The description is "It looks like these levers and buttons and whatnot control the huge flaming metal bucket full of molten steel."

The Huge flaming bucket full of molten steel is scenery in the Crane Catwalk. The description is "WOW. You can actually feel the heat from here. The bucket is actually low enough so that you can see a window at the end of its crane pathway."

The window is scenery in the crane catwalk. 

Check using:
	if the noun is Crane Controls:
		if the mood of the Crane Operator is pissy:
			say "The crane operator yells something incomprehensible at you about cigarettes and money and pushes you away from the controls.";
		if the mood of the Crane operator is chill:
			say "The crane operator is too busy smoking to care about all the safety rules you're violating right now.".
			
Instead of giving the cigarettes to the crane operator:
	say "The crane operator takes your cigs and looks pretty happy now. He's too busy smoking to prevent you messing with his stuff at this point.";
	change the mood of the crane operator to chill.;
	remove the cigarettes from play;
	change the description of the crane operator to "It's the crane operator. He looks pretty chill now that you've given him those cigarettes you found on the floor.".	

Diving is an action applying to one thing.
Understand "jump on [something]" as diving.
Understand "jump through [something]" as diving.

Check diving:
	if the player is in the Crane Catwalk:
		if the noun is Huge Flaming Bucket Full of Molten Steel:
			say "You leap on to the lip of the bucket, the hot steel searing your metalworking clothes slightly.";
			move player to Metal Bucket.;
	If the player is in the Metal Bucket:
		if the noun is Window:
			say "You dive through the window like some action hero tailed by mercenaries, and gracefully land in a trash bin.";
			move player to the dumpster.

[//////////END CRANE CATWALK//////////]

[//////////START METAL BUCKET//////////]

The metal bucket is a room. The description is "You are literally standing on the rim of a huge flaming metal bucket. I hope you feel good about yourself, for this is the day that you show your boss that you can be whoever you want to be, albeit with your shoes melting and on fire. Seriously though, probably shouldn't stand up here for too much longer if you don't want your metalworking gear to fail."

The dumpster is a room.

Use no scoring.