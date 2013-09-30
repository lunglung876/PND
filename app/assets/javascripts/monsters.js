$('p').mouseenter(function(){console.log('p')});
function mousein()
{
    var image= $(this).find('img'),
        caption = $(this).find('a');

    caption.width(image.width());
    caption.height(image.height());
    caption.fadeIn(320);
}
function mouseout()
{
    var image= $(this).find('img'),
        caption = $(this).find('a');

    caption.width(image.width());
    caption.height(image.height());
    caption.fadeOut(250);
}

$(function() {
    return $(document).on('mouseenter', 'tr td', mousein);
});
$(function() {
    return $(document).on('mouseleave', 'tr td', mouseout);
});

$(document).on('click','td input',function(){
        if (this.getAttribute('checked')) {  // check the presence of checked attr
            $(this).removeAttr('checked'); // if present remove that
        } else {
            $(this).attr('checked', true); // if not then make checked
        }
        var posting = $.post( "monsters/result",
            {attr:$('input:radio[name=attr]:checked').val(),category:$('input:radio[name=category]:checked').val()}
            );
        posting.done(function(data){
            console.log('done') ;
            var content = $(data).find("content")
            $("#result").html(data).hide();
            $("#result").fadeIn();
        })

    });
