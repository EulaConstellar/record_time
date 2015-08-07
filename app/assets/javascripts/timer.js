var start = new Date().getTime();
var time = 1000;
var timeout = 10000;

function instance() {
    
    //alert(start);

    if (time == timeout) {

        time = 1000;

    } else {

        time += 1000;

    }
    $('#count').text(time/1000);

    //var diff = (new Date().getTime() - start) - time;
    window.setTimeout(instance, 1000);
}
window.setTimeout(instance, 1000);

$('#current').on('click', function() {

    $('#current span').text(time);

});