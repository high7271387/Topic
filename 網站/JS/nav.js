document.querySelector('.buttonarea button').addEventListener('click',e=>{
    if(document.querySelector('#aaa').style.height != '60px'){
        document.querySelector('#aaa').style.height = 60 + 'px';
        document.querySelector('nav').classList.add('heightchange');
    }
    else{
        document.querySelector('#aaa').style.height = '';
        document.querySelector('nav').classList.remove('heightchange');
    }
})

window.addEventListener('resize',e=>{
    if(window.innerWidth>=576){
        document.querySelector('#aaa').style.height = '';
    }
});