import React, { useEffect, useState } from "react";
import { StatusBar,StyleSheet, FlatList, View, Text, SafeAreaView } from "react-native";
import axios from "axios";
import Itempregunta from "../componentes/ItemPregunta";

export default function Cuestionario (){
    
    const [ListaPreguntas,setListaPreguntas]=useState([])

    useEffect(()=>{
        getpreguntas()
    },[])


    const getpreguntas =async()=>{
        const res = await axios.get("http://10.0.2.15/proyecto_cuestionario/api")
        setListaPreguntas(res.data)
    }
    

    const rederItem = ({item})=>{
        <Itempregunta
        id_pre={item.id_pre}
        titulo_pre={item.titulo_pre}
        descripción_pre={item.descripción_pre}
        valor_pre={item.valor_pre}
        t_categoria_id_cat={item.t_categoria_id_cat}
        />
    }




    return (
        <SafeAreaView>

        <View style={styles.container}>
            <Text>Cuestionario</Text>
        </View>
        <FlatList>
                data ={ListaPreguntas}
                renderItem={rederItem}
                keyExtractor={item => item.id_pre}
        </FlatList>

        <StatusBar></StatusBar>
        </SafeAreaView>


    )
}
const styles = StyleSheet.create({
    container: {
      flex: 1,
      backgroundColor: '#fff',
      alignItems: 'center',
      justifyContent: 'center',
    },
  });