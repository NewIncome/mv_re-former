require('packs/bling.js')

window.onload = event => {
  let flash = $('.flash');
  if(flash) {
    setTimeout(event => {
      flash.style.display = 'none';
    },1700);
  }
}
