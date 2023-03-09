import React from "react"
import { StyleSheet,Text, View } from "react-native"

const ItemPregunta =(props)=>{
    <View>
        <Text>{props.titulo_pre}</Text>
        <Text>{props.descripcion_pre}</Text>
        <Text>{props.valor_pre}</Text>
        <Text>{props.t_categorias_t_cat}</Text>

    </View>
}


const styles = StyleSheet.create({
    container: {
      flex: 1,
      backgroundColor: '#fff',
      alignItems: 'center',
      justifyContent: 'center',
    },
  });
  export default ItemPregunta