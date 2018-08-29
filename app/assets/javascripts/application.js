// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
//= require jquery
//= require jquery_ujs




function selectTag(event, id){
  document.getElementById(id).classList.toggle('active1')
  document.getElementById("filter-fairepart").click();
}

function numberFieldValidate(e){
  document.getElementById("filter-fairepart").click();
}
//new



function verifyNew(){



  var divs = document.querySelectorAll('.error-message'), i;

  for (i = 0; i < divs.length; ++i) {
    divs[i].classList.add("display-none")
  }



  if (document.getElementById("fairepart_couleur_true").checked == false &&
    document.getElementById("fairepart_couleur_false").checked == false ){
    document.querySelector(".couleur-error").classList.remove("display-none")
}
if (document.getElementById("fairepart_pliant_true").checked == false &&
  document.getElementById("fairepart_pliant_false").checked == false ){
  document.querySelector(".pliant-error").classList.remove("display-none")
}
if (document.getElementById("fairepart_verso_true").checked == false &&
  document.getElementById("fairepart_verso_false").checked == false ){
  document.querySelector(".verso-error").classList.remove("display-none")
}

}


// JS for NEW PRICE VALIDATION


function isNumber(evt) {
  evt = (evt) ? evt : window.event;
  var charCode = (evt.which) ? evt.which : evt.keyCode;
  if (charCode == 46){
    return true;
  }
  else if (charCode > 31 && (charCode < 48 || charCode > 57)) {
    return false;
  }
  return true;
}



function isAllFieldFilled(){

  let count = 0

  document.querySelectorAll('.price_text_field').forEach(function(item){

    if (item.value != "" && item.value != "0")
      count +=1
  });

  if (count == 8){
    document.getElementById("btn-price").disabled = false;
    document.getElementById("btn-price").classList.remove("btn-disable");
  }
  else{
    document.getElementById("btn-price").disabled = true;
    document.getElementById("btn-price").classList.add("btn-disable");
  }
}

function isPriceGood(price){

  var result = /^\d[.]\d\d$/.test(price.value);

  if (result == false){
    price.value = 0;
  }
  isAllFieldFilled()
}
