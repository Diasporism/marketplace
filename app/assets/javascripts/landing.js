$(function() {
    function openNavigator() {
        $('#nav-dropdown').toggle();
    }

    function updateNavigator(text) {
        $('#nav-section').html(text);
        $('#nav-dropdown li').css("font-weight","normal");
        $('#nav-dropdown li').filter(function() {
            return $(this).data("discipline") == text;
        }).css("font-weight","bold");
    }

    function scrolledToBottom() {
        return $(window).scrollTop() + $(window).height() == $(document).height()
    }

    updateNavigator($('.discipline-section').first().data('discipline'))
    $(window).bind('scroll', function() {
        $('.discipline-section').each(function() {
            var discipline             = $(this);
            var distance_from_top      = $(window).scrollTop();
            var position_of_discipline = discipline.position().top;

            if (scrolledToBottom()) {
                updateNavigator($('.discipline-section').last().data('discipline'))
            } else if (position_of_discipline <= distance_from_top + ($(window).height() / 2)) {
                updateNavigator(discipline.data('discipline'))
            }
        });
    });
    $('#nav-button').click(openNavigator);
    $('#nav-section').click(openNavigator);
});
