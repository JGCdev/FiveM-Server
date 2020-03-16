Init();

//Cache to keep track of all progress values.
//This is need for the Math.max functions (so no backwards progressbars).
var progressCache = [];

function Init()
{
    //TODO: This does not belong in here...
    var logo = document.getElementById("logo");

    if(config.enableImage)
    {
        logo.setAttribute("src", config.image);
        logo.setAttribute("width", config.imageSize[0]);
        logo.setAttribute("height", config.imageSize[1]);
    }
    else
    {
        logo.setAttribute("src", config.image);
        logo.setAttribute("width", config.imageSize[0]);
        logo.style.visibility = "hidden";
    }


   // var cursor = document.getElementById("cursor");
   // cursor.setAttribute("src", config.cursorImage);
 var follower, init, mouseX, mouseY, positionElement, printout, timer;

  follower = document.getElementById('follower');

  printout = document.getElementById('printout');

  mouseX = event => {
    return event.clientX;
  };

  mouseY = event => {
    return event.clientY;
  };

  positionElement = event => {
    var mouse;
    mouse = {
      x: mouseX(event),
      y: mouseY(event) };

    follower.style.top = mouse.y + 'px';
    return follower.style.left = mouse.x + 'px';
  };

  timer = false;

  window.onmousemove = init = event => {
    var _event;
    _event = event;
    return timer = setTimeout(() => {
      return positionElement(_event);
    }, 1);
  };

//# sourceURL=coffeescript

 
}
