document.querySelector('.buttonarea button').addEventListener('click',e=>{
    if(document.querySelector('#aaa').style.height != '60px'){
        document.querySelector('#aaa').style.height = 60 + 'px';
    }
    else{
        document.querySelector('#aaa').style.height = '';
    }
})

window.addEventListener('resize',e=>{
    if(window.innerWidth>=576){
        document.querySelector('#aaa').style.height = '';
    }
});