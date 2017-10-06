/datum/species
	//This is used in character setup preview generation (prefences_setup.dm) and human mob
	//rendering (update_icons.dm)
	var/color_mult = 0

	//This is for overriding tail rendering with a specific icon in icobase, for static
	//tails only, since tails would wag when dead if you used this
	var/icobase_tail = 0

	//This makes it so that tails don't multiply or add ANY colors whatsoever, we use this to add in legacy races from TG - JonathanHybrid
	var/color_blend = 1

	holder_type = /obj/item/weapon/holder/micro //This allows you to pick up crew, dunno why this wasnt even here ?????????????????????????? - Jonathan

	//This is so that if a race is using the chimera revive they can't use it more than once.
	//Shouldn't really be seen in play too often, but it's case an admin event happens and they give a non chimera the chimera revive. Only one person can use the chimera revive at a time per race.
	//var/reviving = 0 //commented out 'cause moved to mob


	var/wing_hair
	var/wing
	var/wing_animation
	var/icobase_wing
