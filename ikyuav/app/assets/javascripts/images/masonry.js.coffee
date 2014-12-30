$ ->
    $('#masonry-container').masonry
        itemSelector: '.mas-box',
        columnWidth: 100,
        gutterWidth: 5,
        isAnimated: true,
        animationOptions: {
            duration: 500,
            easing: 'swing'
        }
$ ->
    $('.mas-box').hide();
    $('.mas-box').each((i) ->
        $(this).delay(i * 100).fadeIn(1000))