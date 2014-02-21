"metalworks" by Ty Suthard

[//////////CUSTOM ACTIONS//////////]

Kicking is an action applying to one thing.
Understand "kick [something]" as kicking.
Understand "kick down [something]" as kicking.
Understand "break down [something]" as kicking.

Throwing is an action applying to one thing.
Understand "throw [something]" as throwing.


[//////////JANITOR'S CLOSET//////////]

The Janitor's Closet is a room. The description is "A Janitor's closet, just roomy enough for a body to pass out comfortably in. In the corner is the usual mop, there are some crumpled papers scattered around, and there's a large shelf with what looks like lots of cleaning supplies. To your south you can see a door."

The crumpled paper is scenery in the Janitor's Closet. The description is "Some crumpled paper. There's actually not much to say about this. It's not really that interesting."


The Shelf is scenery in the Janitor's Closet. It is an open openable container. It is unlocked and lockable. The description is "A large handy shelf full of things. There are plenty of cleaning supplies here. "

The Mop is a thing in the Janitor's Closet. The description is "A mop, complete with the weird fuzzy end. You muse that 'it's like a water broom.'"

The Cleaning Supplies is in the Shelf. The description is "[if the Cleaning Supplies is in the Shelf] A plethora of cleaning supplies. You pick a few up to look at them and notice that many of them contain ethanol. Maybe this could come in handy if you want to 'go out with a bang' like you said.[end if][If the player is carrying the Cleaning Supplies] To any normal janitor this would be simple bottle of blue cleaning fluid, but in your eyes, you see lighter fluid! This ought to provide some pretty nice flames.[end if]"

The Label is a thing. The description is "According to this white rectangle, this bottle of cleaning fluid contains a fair amount of ethanol. Your instincts from 8th Grade chemistry tell you that this is flammable."

Instead of taking the Cleaning Supplies:
	say "You stick one bottle of the stuff into one of the bigger pockets in your cargo shorts. The back of it has a label listing the chemicals it contains.";
	move Cleaning Supplies to the player.;
	move The label to the player.

The Door to the Janitor's Closet is a closed lockable door. It is locked and lockable. The Door to the Janitor's Closet is south of the Janitor's Closet and north of the Hallway. The description is "A pretty plain wooden door. [if the door is closed]It's locked, but it doesnt look that strong.  [end if][if the door is open] That door was no match for you in the slightest.[end if]"

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

The Catwalk is a room. It is south of the Steel Door.
Use no scoring.