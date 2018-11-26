document.addEventListener("DOMContentLoaded", function(){
  let el = document.getElementById('mycanvas');
  el.width = 500;
  el.height = 500;
  let ctx = el.getContext("2d");
  ctx.fillStyle = "red";
  ctx.fillRect(0,0,300,300);

  ctx.beginPath();
  ctx.arc(100, 100, 20, 0, 2*Math.PI, true);
  ctx.strokeStyle = "purple";
  ctx.lineWidth = 10;
  ctx.stroke();
  ctx.fillStyle="blue";
  ctx.fill();

  ctx.beginPath();
    ctx.moveTo(75, 50);
    ctx.lineTo(100, 75);
    ctx.lineTo(100, 25);
    ctx.fillStyle="black";
    ctx.fill();

});
