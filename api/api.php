<?php
class api{
    public function getpreguntas(){
        $vector= array();
        $conexion=new conexion();
        $con=$conexion->getconexion();
        $sql="select * from t_preguntas";
        $consulta=$con->prepare($sql);
        $consulta->execute();
        while ($fila=$consulta->fetch()){
            $vector[] = array(
                "id_pre" => $fila['id_pre'],
                "titulo_pre" => $fila['titulo_pre'],
                "descripcion_pre" => $fila['descripcion_pre'],
                "valor_pre" => $fila['valor_pre'],
                "t_categorias_id_cat" => $fila['t_categorias_id_cat'],
            );
        }
        return $vector;
    }
}


?>