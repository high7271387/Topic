document.querySelector('.buttonarea button').addEventListener('click',e=>{
    if(document.querySelector('#listItem').style.height != '60px'){
        document.querySelector('#listItem').style.height = 60 + 'px';
        document.querySelector('nav').classList.add('heightchange');
    }
    else{
        document.querySelector('#listItem').style.height = '';
        document.querySelector('nav').classList.remove('heightchange');
    }
})

window.addEventListener('resize',e=>{
    if(window.innerWidth>=576){
        document.querySelector('#listItem').style.height = '';
    }
});