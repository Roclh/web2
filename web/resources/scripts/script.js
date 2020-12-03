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



function ask() {
    if(check())
    {
        sendRequest(x,y,r, "button");
    }
}