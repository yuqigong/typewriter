$(document).ready ->


	# jQuery Dots Plugin
	$.fn.typewriter = (options) ->

		the_text = @.data('text')
		n = 0
		
		settings = $.extend(
			typing_speed: 100
			delay: 0
			location: this
		, options)


		@each ->

			writeThis = (the_text, n) ->
				if n < the_text.length
					$(settings.location).html the_text.substring(0, n + 1)
					n++
					setTimeout (->
						writeThis the_text, n
					), settings.typing_speed

			setTimeout (->
				writeThis the_text, 0
			), settings.delay

	
	$(".show_shit_here").typewriter typing_speed: "125" ,  delay: 500