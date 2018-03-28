$('.post_btn').click(function(){

    var comment = $(this).parent().data('comment');

    alert(comment)

    $.ajax
    ({
        url:'/user_comments/create',
        data: {"comment": comment},
        type: 'post',
        success: function(result)
        {
            $('.modal-box').text(result).fadeIn(700, function()
            {
                setTimeout(function()
                {
                    $('.modal-box').fadeOut();
                }, 2000);
            });
        }
    });
});