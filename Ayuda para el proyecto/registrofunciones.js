document.addEventListener('DOMContentLoaded', function () {
    var f2 = document.querySelector("#f2");
    f2.onsubmit = function (t) {
        t.preventDefault();
        alert("Hola usuario");

        var name = document.getElementById("txtname").value;
        var apellido = document.getElementById("txtapellido").value;
        var number = document.getElementById("txtnumber").value;
        var email = document.getElementById("txtemail").value;
        var psw = document.getElementById("txtpassword").value;

        if (name == '' || apellido == '' || number == '' || email == '' || psw == '') {
            alert("Error, debe de ingresar name, apellido, number, email y password");
            return false;
        }
        var request = (window.XMLHttpRequest) ? new XMLHttpRequest() : new ActiveXObject('Microsoft.XMLHTTP');
        var ajaxUrl = "http://localhost/pagina_taparto/registrar.php";
        var formData = new FormData(f1);
        request.open("POST", ajaxUrl, true);
        request.send(formData);

        request.onreadystatechange = function () {

            if (request.readyState == 4 && request.status == 200) {

                var objData = JSON.parse(request.responsetext);
                if (objData.status);
                alert("Mensaje", objData.msg);
            } else {
                alert("Error", objData.msg);
            }
        }
    }
})