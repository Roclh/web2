let canvas = document.getElementById("area");
let context = canvas.getContext("2d");

var img = new Image();
img.src = "resources/pictures/quest.png";

img.onload = function (){
    context.drawImage(img, 0, 0, canvas.width, canvas.height);
}

function onClick(event){
    if(checkR()){
        let rect = event.currentTarget.getBoundingClientRect();
        let x = event.clientX - rect.left;
        let y = event.clientY - rect.top;
        let basis = 100 / r;
        let cx = ((x - 150) / basis);
        let cy = ((150 - y) / basis);
        sendRequest(cx, cy, r, "canvas");
    }
}





