function width_textImg() {
  if (document.body.offsetWidth > 979) {
    var wBase = document.getElementsByClassName('texImg-hor');
    for (var i = 0; i < wBase.length; i++) {
      wBase[i].style.width = document.body.offsetWidth/3 + 'px';
      wBase[i].style.height = document.body.offsetWidth/6 + 'px';
    }
  }
  /* submenu width
  var dmenu = document.getElementsByClassName('dropdown-menu');
  for (var i = 0; i < dmenu.length; i++) {
    dmenu[i].style.width = document.body.offsetWidth + 'px';
  }*/

  /* Slider destacados initial width */
  var pSlider = document.getElementsByClassName('slider-des');
  if (pSlider[0] != undefined) {
    var itemSlider = pSlider[0].getElementsByClassName('slider-des-item');
    pSlider[0].style.width = (itemSlider.length * 355) + 'px';
  }
  /* slider home height */
  if (document.body.offsetWidth > 979) {
    console.log(window.innerHeight);
    var contSlider = document.getElementsByClassName('cont-slider');
    contSlider[0].style.height = window.innerHeight - wBase[0].offsetHeight + 'px';
  }
}

function mostrarMenu() {
  var menu = document.getElementsByClassName('dl-menu');
  if (menu[0].style.display == 'block') {
    menu[0].style.opacity = 0;
    setTimeout(function() {
      menu[0].style.display = 'none';
    }, 700);
  }
  else
  {
    menu[0].style.display = 'block';
    setTimeout(function() {
      menu[0].style.opacity = 1;
    }, 0);
  }
}

function showSearch() {
  var inputS = document.getElementById('dnn_dnnSearch_txtSearch');
  if (inputS.style.display == 'block') {
    inputS.style.display = 'none';
  }
  else {
    inputS.style.display = 'block';
  }
}

function backSliderD() {
  var pSlider = document.getElementsByClassName('slider-des');
  var mLeft = window.getComputedStyle(pSlider[0]);
  mLeft = (mLeft.marginLeft).split('px');
  pSlider[0].style.marginLeft = (Number(mLeft[0]) + 355) + 'px';
}

function forwSliderD() {
  var pSlider = document.getElementsByClassName('slider-des');
  var mLeft = window.getComputedStyle(pSlider[0]);
  mLeft = (mLeft.marginLeft).split('px');
  pSlider[0].style.marginLeft = (Number(mLeft[0]) - 355) + 'px';
}
