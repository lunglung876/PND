$('p').mouseenter(function(){console.log('p')});
function mousein()
{
    var image= $(this).find('img'),
        caption = $(this).find('a');

    caption.width(image.width());
    caption.height(image.height());
    caption.fadeIn();
}
function mouseout()
{
    var image= $(this).find('img'),
        caption = $(this).find('a');

    caption.width(image.width());
    caption.height(image.height());
    caption.fadeOut();
}


$(function() {
    return $(document).on('mouseenter', 'tr td', mousein);
});
$(function() {
    return $(document).on('mouseleave', 'tr td', mouseout);
});

$(function(){

    $('td input').click(function(){
        $("#monster_search").submit();
    })
})

$(function() {
    /* Convenience for forms or links that return HTML from a remote ajax call.
     The returned markup will be inserted into the element id specified.
     */
    $('form[data-update-target]').on('ajax:success', function(evt, data) {
        console.log('ajax')
        var target = $(this).data('update-target');
        console.log(target)
        $('#' + target).html(data);
    });
});