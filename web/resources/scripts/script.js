let x,y,r, responce = '';

function setR(value){
    r = value;
}

function reset(){
    x=null;
    y=null;
    r=null;
    responce='';
    HTMLFormElement.reset()
}

function checkR(){
    return r==null;
}

function check(){
    let choose = false;
    let fail = false;

    for(let i = 0; i<9; i++){
        if(document.getElementById('X' + i.toString()).checked){
            choose = true;
            x = document.getElementById('X' + i.toString()).value;
            break;
        }
    }


    if(r === ''){
        fail = true;
        responce += 'Выберите R \n';
    }

    if(!choose) {
        fail = true;
        responce += 'Выберите X \n';
    }

    y = document.getElementById('Y').value.trim();
    if(y.length >= 12){
        y = y.prototype.slice(0, 12);
    }
    if(y === ''){
        responce += 'Введите Y \n';
        fail = true;
    }else{
        if(!/^(-?\d+)([,.]\d+)?$/.test(y)){
            responce += 'Некорректный ввод Y \n';
            fail = true;
        }else if( y<= -3 || y >= 3){
            responce += 'Y вне диапозона \n';
            fail = true;
        }
    }
    if(r==null){
        responce += 'Выберите R\n';
    }

    if (fail){
        alert(responce);
        responce = '';
        return false;
    } return true;
}

function point_draw(x_value, y_value, r, flag) {
    let canvas = document.getElementById('area');
    let context = canvas.getContext('2d');
    let x = x_value * 100 / r + 150;
    let y = 150 - y_value * 100 / r;
    if (flag) context.fillStyle = "green";
    if (!flag) context.fillStyle = "red";
    context.beginPath();
    context.arc(x, y, 2, 0, Math.PI * 2, false);
    context.fill();
    context.stroke();
}

function ask() {
    if(check())
    {
        sendRequest(x,y,r, "button");
    }
}