#define SCRAMBLE_CACHE_LEN 20

/datum/language/kharmaani
	name = "Mantid Vocal"
	desc = "A curt, sharp language."
	speech_verb = "clicks"
	ask_verb = "chirps"
	exclaim_verb = "rasps"
	colour = "alien"
	syllables = list("-","=","+","±","¯","_","¦","|","/")
	space_chance = 0
	key = "|"
	flags = RESTRICTED

/datum/language/kharmaani_nonvocal
	key = "]"
	name = "Mantid Nonvocal"
	desc = "A complex visual language of bright bio-luminescent flashes."
	colour = "alien"
	speech_verb = "flashes"
	ask_verb = "gleams"
	exclaim_verb = "flares"
	flags = RESTRICTED

/datum/language/kharmaani_nonvocal/scramble(var/input)

	if(input in scramble_cache)
		var/n = scramble_cache[input]
		scramble_cache -= input
		scramble_cache[input] = n
		return n

	var/i = length(input)
	var/scrambled_text = ""
	while(i)
		i--
		scrambled_text += "<font color='[get_random_colour(1)]'>*</font>"

	scramble_cache[input] = scrambled_text
	if(scramble_cache.len > SCRAMBLE_CACHE_LEN)
		scramble_cache.Cut(1, scramble_cache.len-SCRAMBLE_CACHE_LEN-1)

	return scrambled_text

/datum/language/kharmaani_broadcast
	key = "\["
	name = "Worldnet"
	desc = "The mantid aliens of Europa maintain an extensive self-supporting broadcast network for use in team communications."
	colour = "alien"
	speech_verb = "flashes"
	ask_verb = "gleams"
	exclaim_verb = "flares"
	flags = RESTRICTED | HIVEMIND

#undef SCRAMBLE_CACHE_LEN
