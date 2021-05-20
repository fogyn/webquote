function formTimer(){

    if(document.getElementById("idformtimer").style.display == "none"){
        document.getElementById("idformtimer").style.display = "block";
       }
    else{
        document.getElementById("idformtimer").style.display = "none";
    }
}


const delay = millis => new Promise((resolve, reject) => {
    setTimeout(_ => resolve(), millis)
});

async function startTimer(){
    var form = document.forms.f1;
    var seconds = form.elements.sec.value;
    if(seconds<0){
        document.getElementById("rezTimer").innerHTML = 0;
        alert('Значение таймера не может быть меньше 0');
    }
    else{

        for(let i=0; i<Number(seconds)+Number(1); i++){
            document.getElementById("rezTimer").innerHTML = seconds-i;
            await delay(1000);

        }

    }

}