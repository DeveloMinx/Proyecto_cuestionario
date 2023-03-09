<?php
class conexion {

    public function getconexion(){
        $servidor="localhost";
        $basededatos="bdd_cuestionario";
        $usuario="root";
        $contrasena="root";

        $con = new PDO("mysql:host=$servidor;dbname=$basededatos", $usuario, $contrasena);
        if (!$con) {
            die("Connection failed: " . mysqli_connect_error());
        }
        echo "";
        return $con;
    }
}
?>