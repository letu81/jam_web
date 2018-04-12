var demoImgArray = [];
var stripesAnim;
var calcPercent;
$progress = $('.progress-bar');
$percent = $('.percentage');
$stripes = $('.progress-stripes');
$ycnone = $('.load');
$('.skin').click(function () {
    var whichColor = $(this).attr('id');
    setSkin(whichColor);
});
preload(demoImgArray);
stripesAnimate();
$(window).load(function () {
    loaded = true;
    $progress.animate({width: "100%"}, 100, function () {
        $percent.text('100%');
        $ycnone.addClass('ycnone');
        clearInterval(calcPercent);
        clearInterval(stripesAnim)
    })
});
function preload(imgArray) {
    var increment = Math.floor(100 / imgArray.length);
    $(imgArray).each(function () {
        $('<img>').attr("src", this).load(function () {
            $progress.animate({width: "+=" + increment + "%"}, 100)
        })
    });
    calcPercent = setInterval(function () {
        $percent.text(Math.floor(($progress.width() / $('.loader').width()) * 100) + '%')
    })
}
function stripesAnimate() {
    animating();
    stripesAnim = setInterval(animating, 2500)
}
function animating() {
    $stripes.animate({marginLeft: "-=30px"}, 2500, "linear").append('/')
}
	