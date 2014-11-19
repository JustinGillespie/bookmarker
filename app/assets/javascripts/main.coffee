
$(document).on 'ready page:load', () ->
	notice = $('#flash_notice')
	if notice.length > 0
		notice.addClass 'open'
		setTimeout ( ->
  		notice.removeClass 'open'
		), 6000
