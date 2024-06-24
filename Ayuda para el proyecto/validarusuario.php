<?php
    require_once('conexion.php');

    $email = $_POST['txtemail'];
    $password = $_POST['txtpassword'];

    $sql = "select * from usu where email = '{$email}'";
    
    $conexion = conectar();
    $result = $conexion->prepare($sql);
    $result->execute();
    $data = $result->fetchall(PDO::FETCH_ASSOC);

    if(empty($data)){
        //echo("Usuario incorrecto");

        header('location:errorusuario.html');
    }else{
        if($data[0]['Contrasena'] == $password){
        //echo("Validado correctamente");
        session_start();    
        $_SESSION['email'] = $email;
        $_SESSION['password'] = $password;
        header('location:index.php');
        }else{
        //echo("contraseña incorrecta");
        header('location:errorusuario.html');
        }
    }
?>