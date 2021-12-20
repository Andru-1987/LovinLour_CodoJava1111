const texto=["Lovin' Lour "];
let cont=0;
let index=0;
let currentText='';
let letter='';

(function type(){
if (cont===texto.length) {
  cont=0;
}
currentText=texto[cont];

letter=currentText.slice(0,++index);
document.getElementById('typing').value=letter;

if(letter.length===currentText.length){
  cont++;
  index=0;
};

setTimeout(type,200);
})();


// ----------------------------------------

// creacion de boton toggle para mostrar quienes somos

const $aboutUs=document.getElementById('aboutUs');
const $data=document.querySelector('.data');

const $dataUs=document.getElementById('us');

let aboutUsOpen=false;


function abrir(){
  if(!aboutUsOpen){
    $data.classList.add('hidden');
    aboutUsOpen=true;
    $dataUs.classList.remove('hidden');
  }
  else{
    $data.classList.remove('hidden');
    aboutUsOpen=false;
    $dataUs.classList.add('hidden');
  }
}

$aboutUs.addEventListener('click',abrir);
// $aboutUs.addEventListener('click',()=>{console.log('this!')});

// ----------------------------------------
