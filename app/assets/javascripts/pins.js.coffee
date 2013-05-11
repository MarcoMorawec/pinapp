# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery -> 
	$('#pins').imagesLoaded -> 
		$('#pins').masonry itemSelector: ".box"

# adding endless scrolling to bottom of the page
  if $('.pagination').length
    $(window).scroll ->
      url = $('.pagination .next_page a').attr('href')
      if url && $(window).scrollTop() > $(document).height() - $(window).height() - 50
      	#50px from bottom of page do this:
        $('.pagination').text("Fetching more pins...")
        $.getScript(url)
    $(window).scroll()
