function objetoAjax(){
    var xmlhttp = false;
    try {
      xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
    } catch (e) {

      try {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
      } catch (E) {
        xmlhttp = false; }
    }

    if (!xmlhttp && typeof XMLHttpRequest!='undefined') {
      xmlhttp = new XMLHttpRequest();
    }
    return xmlhttp;
  }

  function enviarRfcProf(){

    rfc = document.getElementById('rfcp');
    rs_cons = document.getElementById('rs_consp')

    ajax = objetoAjax();

    ajax.open("POST", "../dynamics/php/administrador/pruebabd.php", true);

    ajax.onreadystatechange = function() {

      if (ajax.readyState == 4){

        rs_cons.style.display = "block";
        rs_cons.innerHTML = (ajax.responseText)
      }else{
        rs_cons.style.display = "none";

      }
    }
    ajax.setRequestHeader("Content-Type","application/x-www-form-urlencoded");

    ajax.send("&rfc=" + rfc.value)

}

function enviarRfcCoord(){

  rfcc = document.getElementById('rfcc');
  rs_consc = document.getElementById('rs_consc')

  ajax = objetoAjax();

  ajax.open("POST", "../dynamics/php/administrador/pruebabd.php", true);

  ajax.onreadystatechange = function() {

    if (ajax.readyState == 4){

      rs_consc.style.display = "block";
      rs_consc.innerHTML = (ajax.responseText)
    }else{
      rs_consc.style.display = "none";

    }
  }
  ajax.setRequestHeader("Content-Type","application/x-www-form-urlencoded");

  ajax.send("&rfc=" + rfcc.value)

}
