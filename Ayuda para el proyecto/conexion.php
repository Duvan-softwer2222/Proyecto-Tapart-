<?php

    function conectar(){
        $conectionstrig = "mysql:host=localhost;dbname=duvan;charset=utf8";
        try
        {
            $conect = new PDO($conectionstrig, "root", "");
            $conect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            return $conect;
        }
        catch(PDOException $e)
        {
            echo("Error de conexión");
            return 0;
        }
    }


?>