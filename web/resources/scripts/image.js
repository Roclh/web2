let canvas = document.getElementById("area");
let context = canvas.getContext("2d");
context.fillStyle = "#c3aed6";
context.fillRect(0, 0, canvas.width, canvas.height);
context.fillStyle = "#FF00FF";
context.fillRect(150, 100, 100, 50);
context.beginPath();
context.moveTo(150, 150);
context.lineTo(100, 150);
context.arc(150, 150, 50, 0, Math.PI/2);
context.closePath();
context.fill();
//Треугольник
context.beginPath();
context.moveTo(50, 150);
context.lineTo(150, 50);
context.lineTo(150, 150);
context.lineTo(50, 150);
context.closePath();
context.fill();
//Полоски
context.beginPath();
context.moveTo(0, 150);
context.lineTo(300, 150);
context.moveTo(150, 0);
context.lineTo(150, 300);
context.moveTo(150, 0);
context.lineTo(145, 15);
context.moveTo(150, 0);
context.lineTo(155, 15);
context.moveTo(300, 150);
context.lineTo(285, 145);
context.moveTo(300, 150);
context.lineTo(285, 155);
context.moveTo(145, 50);
context.lineTo(155, 50);
context.moveTo(145, 100);
context.lineTo(155, 100);
context.moveTo(145, 200);
context.lineTo(155, 200);
context.moveTo(145, 250);
context.lineTo(155, 250);
context.moveTo(50, 145);
context.lineTo(50, 155);
context.moveTo(100, 145);
context.lineTo(100, 155);
context.moveTo(200, 145);
context.lineTo(200, 155);
context.moveTo(250, 145);
context.lineTo(250, 155);
context.stroke();
//Текст
context.fillStyle = "#000000";
context.font = "10pt Arial";
context.fillText("Y", 160, 15);
context.fillText("R", 160, 55);
context.fillText("R/2", 160, 105);
context.fillText("-R/2", 160, 205);
context.fillText("-R", 160, 255);
context.fillText("X", 285, 140);
context.fillText("R/2", 195, 140);
context.fillText("R", 245, 140);
context.fillText("-R", 45, 140);
context.fillText("-R/2", 95, 140);

canvas.onmousemove = function (e){
    let rect = canvas.getBoundingClientRect();
    let x = e.clientX - rect.left;
    let y = e.clientY - rect.top;
    let basis = 100 / r;
    let cx = ((x - 150) / basis);
    let cy = ((150 - y) / basis);
    console.log(cx + " " + cy)
}

canvas.onmousedown = function (e){
    if(!!r){
        let rect = canvas.getBoundingClientRect();
        let x = e.clientX - rect.left;
        let y = e.clientY - rect.top;
        let basis = 100 / r;
        let cx = ((x - 150) / basis);
        let cy = ((150 - y) / basis);
        alert(x+" "+y+" "+" "+cx+" "+cy);
        sendRequest(cx, cy, r, "canvas");
    }else{
        alert("Выберите R");
    }
}
//
// function send(event){
//     if(checkR()){
//         let rect = event.currentTarget.getBoundingClientRect();
//         let x = event.clientX - rect.left;
//         let y = event.clientY - rect.top;
//         let basis = 100 / r;
//         let cx = ((x - 150) / basis);
//         let cy = ((150 - y) / basis);
//         sendRequest(cx, cy, r, "canvas");
//     }
// }

function draw(x_val, y_val, r, flag){
    let x = x_val * 100/ r +150;
    let y = 150 - y_val*100/r;
    if(flag) context.fillStyle = "green";
    else context.fillStyle = "red";
    context.beginPath();
    context.arc(x,y,2,0,Math.PI * 2, false);
    context.fill();
    context.stroke();
}







