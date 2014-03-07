"metalworks" by Ty Suthard
[//////////DEBUG COMMANDS//////////]
Hopefully i can get a teleport command in here eventually so it's easier to test this darn thing.

When play begins: say "You wake up in a Janitor's closet after what you assume was a really long night. Not that you can remember it at all. You can barely remember anything, actually. All you know is that you work in a steelmill and that you want to quit your job in style.".
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
	
Instead of taking the mop:
	say "You try to be cool and use your shoelace to tie the mop around your back, like it was a battleaxe or something.";
	move the mop to the player.

The Door to the Janitor's Closet is a closed lockable door. "..." It is locked and lockable. The Door to the Janitor's Closet is south of the Janitor's Closet and north of the Hallway. The description is "A pretty plain wooden door. [if the door is closed]It's locked, but it doesnt look that strong.[end if][if the door is open] That door was no match for you in the slightest.[end if]"

After kicking the Door to the Janitor's Closet:
	now the Door to the Janitor's Closet is open.;
	say "You give a mighty kick towards the Door and it swings open wide for you, sending a few splinters your way. You can see a hallway to your south now."
	
Check going south:
	if the player is in the Janitor's Closet:
		if the Door to the Janitor's Closet is closed:
			say "Uh, the door's locked. Darn. Looks like you'll have to come up with more creative ways to get out of here." instead.
			
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
		say "You take a few confident steps, right into the shelf."
		



[////////////////////////////////////////END JANITOR'S CLOSET//////////////////////////////////////]
[////////////////////////////////////////HALLWAY START///////////////////////////////////////////]

	
The Hallway is a room. It is south of the Janitor's Closet Door. The description is "A pretty boring hallway. You can see a window peering into an office to the west and a sign on the right."

The sign is scenery in the Hallway. The description is "This sign labels the metalworking gear room to your East. It is orange."

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

The steel door is a closed lockable door. "…". It is locked and lockable. It is south of the Gear Room and north of the Catwalk. The description is "A heavy, solid steel door. Unlike the door for the janitor's closet, there's no way you'll be able to kick this one down."

The button is a thing in the Gear Room. The button can be pressed. The description is "A big shiny red button next to the big steel door. I wonder what it does?"

Instead of pushing the button:
	say "With a mighty tap, you depress the red button, such that it activates a mechanism, triggering a response in an electrical system, which in return activates the motors connected to the steel door, raising said door, revealing a passage to a catwalk to your south.";
	now the steel door is open.
	
Understand "red button" as button.
	
Some metalworking gear are a thing in the Gear Room. The Metalworking Gear can be worn. The description is "Some heavy duty metalworking clothes, capable of keeping you cool in temperatures up to 500 degress celsius."

Check going south:
	if the player is in the gear room:
		if the player is not carrying the metalworking gear:
			say "You should take that metalworking gear before you leave here first." instead.
[//////////GEAR ROOM END//////////]

[//////////CATWALK START//////////]

Check going north:
	If the player is in the catwalk:
		say "You'd rather get out of here than retreat into the gear room." instead.

The Catwalk is a room. It is south of the Steel Door. "A large catwalk outside of the gear room. Unfortunately you can see your boss here, but you can also see an escape route to your west in the form of a stairwell."

The Boss is a man in the Catwalk. "Oh crap, it's your boss. The last thing you want to do is get talked to by him. You'd better get out of here."

The stairwell is an open unopenable door. "…". It is west of the Catwalk and east of the main floor. The description is "Some plain old metal stairs."

[//////////CATWALK END//////////]

[//////////MAIN FLOOR PUZZLES//////////]

Using is an action applying to two things.
Understand "use [something] with [something]" as using.
Understand "burn [something] with [something]" as using.
Understand "light [something] with [something]" as using.
Understand "use [something]" as using.


[//////////MAIN FLOOR START//////////]

Things can be turned on or off. Things are usually off.

The Main Floor is a room. It is west of the stairwell. The description is "The main metalworking floor. In here you can see a few things lying on the floor, in the form of a pack of cigarettes and a blowtorch. To your west is another part of the floor."

The blowtorch is a device in the main floor. "…". blowtorch is off. The description is "A blowtorch.[if the blowtorch is turned on] Presently, there are flames spewing out the top of it at over 500 degrees celsius.[end if] It can be switched on and off by a valve near the nozzle."

Some cigarettes are a thing in the Main Floor. "…". The description is "A pack of 'Marble' cigarettes. Ever since they found the loophole in placing warning labels, they're now covered with the label of 'WARNING: Smoking is AWESOME.'" 

Understand "cigs" as cigarettes.

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
		say "Dude, your boss is literally climbing down the stairs to talk to you, do you actually want to talk to him?" instead.

The ashpile is a thing. The description is "Some ashes from your burning of those cigarrettes. You still have plenty of cigarrettes leftover though."

Check using:
	if the player is in the main floor:
		if the noun is cigarettes:
			if the noun is blowtorch:
				If the blowtorch is switched on:
					say "You create a large plume of smoke, distracting your boss and masking your location temporarily. You can use this newfound time to escape to your west.";
					move the ashpile to the player.;
					change the blowtorch to off.;
					say "You switch off the blowtorch.".;
				if the blowtorch is off:
					say "You need to turn actually turn on the blowtorch to burn things.".
			
Check going west:
	if the player is in the main floor:
		if the player is not carrying the ashpile:
			say "You can't head west yet, not while in plain sight. You need to create a distraction somehow to get away from your boss.[if the player is carrying the cigarettes] Those cigarettes you picked up look like that could be useful…[end if]" instead.;
		if the player is carrying the ashpile:
			move Boss to the Main Floor;
			say "You manage to get out of the Main floor before the boss catches up to you, thanks to the cloud of smoke you just created.";
			move the player to the west Floor.
		
Check throwing:
	if the noun is The Mop:
		if the noun is the boss:
			say "You valiantly throw your mop at your boss to have it fall several inches short. He just looks at you sort of confused. You'd better find a better way to distract your boss.".



[//////////MAIN FLOOR END//////////]

[EXPLOSIVE BARREL PUZZLE ELEMENTS]

Pouring is an action applying to two things.
Understand "pour [something] on [something]" as pouring.

Throwing is an action applying to two things.
Understand "throw [something] at [something]" as throwing.

Things can be destroyed or prestine. Things are usually prestine.

[//////////WEST FLOOR START//////////]

The west floor is a room. It is west of the Main floor. The description is "You are now located in the room adjacent to the main floor to the west. You have dubbed this room the West Floor. In here you can see some propane tanks and a cinderblock wall." [orly?]

Some Propane tanks are scenery in the West floor. "Some propane tanks. It's actually a bit odd that we left them on the main working floor. Who knows what sort of explosive capability they have?"

The cinderblock wall is scenery in the West Floor. It is prestine. The description is "[If the cinderblock wall is prestine] A cinderblock wall. Chances are it's not the strongest, it IS only made out cement or something anyways.[end if][if the cinderblock wall is destroyed] A gaping whole is all that remains of the wall that was once here.[end if]".

Check throwing:
	if the player is in the west floor:
		if the noun is blowtorch:
			if the noun is propane tanks:
				if the blowtorch is switched on:
					say "Within seconds of the blowtorch reaching the tanks, they ignite and create a large explosion, destroying the wall.";
					change cinderblock wall to destroyed.;
					remove the blowtorch from play.;
					remove the propane tanks from play.;
				If the blowtorch is off:
					say "wat r u doin m8. throwing things around like a crazy person.".
				
Check using:
	if the player is in the west floor:
		if the noun is propane tanks:
			if the noun is blowtorch:
				if the blowtorch is switched off:
					say "Even if you had the blowtorch turned on, using it this close to the propane tanks would result in a fairly gruesome death. You should consider some way of igniting the tanks from further away.";
				if the blowtorch is switched on:
					say "Luckily for you, common sense kicks in and you somehow decide not to light the propane tanks right next to you. You should consider other ways of igniting the tank from further away.".;
					change the blowtorch to off.;
					say "You switch the blowtorch off to discourage yourself from trying that again.".

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
				say "BUUURN BUUUURN BUUUUUUUUUURN AHAHAHAHAHA".;
				Change the cinderblock wall to destroyed.;
				remove the propane tanks from play.;
				remove the cleaning supplies from play.;
				say "The trail of cleaning supplies burns and leads up to the propane tanks, like a fuse of sorts. They propane tanks eventually ignite, and blast a gaping hole in the cinderblock wall, leading to another room.".

	
Check going south:
	if the player is in the west floor:
		if the cinderblock wall is destroyed:
			say "you proceed to move into the rubble.";
			move the player to the ruined room.;
			move Boss to the West Floor.;
			say "Your boss arrives in the West Floor to assess the havok you just caused. ";
		if the cinderblock wall is prestine:
			say "why are you trying to walk into a wall".
			
Check going west:
	if the player is in the west floor:
		say "Seriously, what is up with you and walking into walls" instead.
		

[//////////WEST FLOOR END//////////]

[//////////THE RUINED ROOM START//////////]

The ruined room is a room. It is north of the crane stairwell. "This place is ruined. There's debris everywhere."

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

The Crane Operator is a man in the crane catwalk. The Crane Operator is pissy. "The dude is a dude in the dude area of the crane catwalk. he looks like a pretty decent bro.[if the mood of the Crane Operator is pissy] No, wait, he actually looks pretty stingy about something.[end if]"

[uh this was mostly testing]
Instead of talking to the Crane Operator:
	say "gimme some cigarettes or some money to buy some cigarettes";
	say "why dont you ask nicely and go jump in that flaming metal bucket";
	say "the dude pushes you into a fire";
	say ".
	..
	…
	….
	…..
	……
	…….
	not really though, keep playing."

Some Crane Controls are scenery in the Crane Catwalk. The description is "It looks like these levers and buttons and whatnot control crane carrying the huge flaming metal bucket full of molten steel."

The Huge flaming bucket full of molten steel is scenery in the Crane Catwalk. The description is "WOW. You can actually feel the heat from here. The bucket is actually low enough so that you can see a window at the end of its crane pathway."

The window is scenery in the crane catwalk. "You can see a large window across from the catwalk. It seems as though the metal bucket moves near it when in operation."

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

Instead of giving the $20 bill to the crane operator:
	say "The crane operator graciously takes your money out of your hands and looks pretty happy now. He agrees to let you use the crane controls.";
	change the mood of the crane operator to chill.;
	remove the $20 bill from play;
	change the description of the crane operator to "It's the crane operator. He giggling like a schoolgirl now that he's got that $20 bill in his hands.".
	

Diving is an action applying to one thing.
Understand "jump on [something]" as diving.
Understand "jump through [something]" as diving.

Check diving:
	if the player is in the Crane Catwalk:
		if the noun is Huge Flaming Bucket Full of Molten Steel:
			if the player is wearing some Metalworking Gear:
				say "You leap on to the lip of the bucket, the hot steel searing your metalworking clothes slightly.";
				move player to Metal Bucket.;
	If the player is in the Metal Bucket:
		if the noun is Window:
			say "You dive through the window like some action hero tailed by mercenaries, and gracefully land in a trash bin.";
			move player to the dumpster.

[//////////END CRANE CATWALK//////////]

[//////////START METAL BUCKET//////////]

The metal bucket is a room. The description is "You are literally standing on the rim of a huge flaming metal bucket. I hope you feel good about yourself, for this is the day that you show your boss that you can be whoever you want to be, albeit with your shoes melting and on fire. Seriously though, you probably shouldn't stand up here for too much longer if you don't want your metalworking gear to fail. Luckily, the crane seems to be moving your bucket nearer to the window, but before you take your leap of faith, you figure you should say some last words to your boss."

The dumpster is a room. "A wonderful dumpster. It looks like you successfully made it out of the steel mill without letting your boss talk to you. Oh look, a rat."

The rat is a thing in the dumpster. "…". The description is "A rat. He seems pretty content with you sitting there. He probably wouldn't mind to much if you picked him up actually."

Use no scoring.

An every turn rule:
if the player is carrying the rat,
end the game in victory.


