/mob/living/carbon/human/handle_typing_indicator()
	..()
	if(species.overlay_x_offset)
		typing_indicator.pixel_x = species.overlay_x_offset
	if(species.overlay_y_offset)
		typing_indicator.pixel_y = species.overlay_y_offset