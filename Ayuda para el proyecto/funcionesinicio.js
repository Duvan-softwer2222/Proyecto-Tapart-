document.addEventListener('DOMContentLoaded', function(){
    var f1 = document.querySelector("#f1");
    f1.onsubmit = function(t){
        t.preventDefault();
        alert("Hola usuario");

        var email = document.getElementById("txtemail").value;
        var psw = document.getElementById("txtpassword").value;

        if(email == '' || psw == '')
        {
            alert("Error, debe de ingresar email y password");
            return false;
        }
        alert("El formulario esta bien");
    }
})