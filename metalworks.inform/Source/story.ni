"metalworks" by Ty Suthard

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

The Door to the Janitor's Closet is a closed lockable door. "..." It is locked and lockable. The Door to the Janitor's Closet is south of the Janitor's Closet and north of the Hallway. The description is "A pretty plain wooden door. [if the door is closed]It's locked, but it doesnt look that strong.  [end if][if the door is open] That door was no match for you in the slightest.[end if]"

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
				say "yeahyeahitworks burn, burn burn";
			if the blowtorch is off:
				say "you need fire to burn things.".
			
	
[//////////MAIN FLOOR END//////////]

[EXPLOSIVE BARREL PUZZLE ELEMENTS]

Pouring is an action applying to one thing.
Understand "pour [something]" as pouring.

Throwing is an action applying to one thing.
Understand "throw [something]" as throwing.

Things can be destroyed or prestine. Things are usually prestine.


[//////////WEST FLOOR START//////////]

The west floor is a room. it is west of the Main floor.

Some Propane tanks are scenery in the West floor. "Some propane tanks. It's actually a bit odd that we left them on the main working floor. Who knows what sort of explosive capability they have?"

The cinderblock wall is scenery in the West Floor. It is prestine. The description is "[If the cinderblock wall is prestine] A cinderblock wall. Chances are it's not the strongest, it /i/is/i/ only made out cement or something anyways.[end if][if the cinderblock wall is destroyed] A gaping whole is all that remains of the wall that was once here.[end if]"


[//////////WEST FLOOR END//////////]

[//////////THE RUINED ROOM START//////////]

The ruined room is a room.





Use no scoring.