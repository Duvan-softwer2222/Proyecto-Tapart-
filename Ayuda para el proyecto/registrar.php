<?php

    require_once('conexion.php');

    $name = $_POST['txtname'];
    $apellido = $_POST['txtapellido'];
    $number = $_POST['txtnumber'];
    $email = $_POST['txtemail'];
    $password = $_POST['txtpassword'];
    

    if($name != "" && $apellido != "" && $number != "" && $email != "" && $password != ""){
    

    $sql = "insert into usu(Nombre, Apellido, Fecha, Email, Contrasena) values(?,?,?,?,?)";
    $arrData = array($name, $apellido, $number, $email, $password);

    $conexion = conectar();
    $insertar = $conexion->prepare($sql);
    $r = $insertar->execute($arrData);

    if($r){
        header("Location:inicio.html");
        $arrResponse = array('status' => true, 'msg' => 'Datos insertados');
    }else{
        $arrResponse = array('status' => false, 'msg' => 'Ha ocurrido un error');
    }

    //echo json_encode($arrResponse, JSON_UNESCAPED_UNICODE);
    die();
    }else{
        echo '<script language="javascript">alert("Debes llenar todos los campos");</script>';
        header('Location: cliente.html');
    }
?>