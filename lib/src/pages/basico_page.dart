import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
final estiloSubTitulo = TextStyle(fontSize: 20.0, color: Colors.grey);





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
       child: Column( 
         children: <Widget>[

         _crearImagem(),
         _crearTitulo(),
         _crearAcciones(), 
         _crearTexto(),
         _crearTexto(),
         _crearTexto(),



        

        ],),
      )
    );
  }
  Widget _crearImagem(){

    return Container(
      width: double.infinity,
      child: Image(image: AssetImage('assets/imagen.jpg'),
              height: 200.0,
              fit: BoxFit.cover,

          
            ),
    );
  } 

  Widget _crearTitulo(){

    return SafeArea(
      child: Container(
               padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
               child: Row(
                 children: <Widget> [
    
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget> [
                        Text('Playas calidas', style: estiloTitulo),
                        SizedBox( height: 7.0),
                        Text('Roscas en playas calidas', style: estiloSubTitulo),
                      ],
                    ),
                  ),
    
                  Icon(Icons.star, color: Colors.red, size: 30.0,),
                  Text('41', style: TextStyle( fontSize: 20.0)),
    
    
    
                 ],
                ),
             ),
    );

  }

  Widget _crearAcciones(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: <Widget> [ 

      _accion(Icons.call, 'CALL'),
      _accion(Icons.near_me, 'ROUTE'),
      _accion(Icons.share, 'SHARE'),


      ],
    );


  }

  Widget _accion(IconData icon, String texto){

    return Column(
          children:<Widget> [
            Icon(icon, color: Colors.blue, size: 40.0 ),
            SizedBox(height: 5.0,),
            Text( texto, style: TextStyle(fontSize: 15.0, color: Colors.blue,))
          ],
        );
  }

  Widget _crearTexto(){

    return SafeArea(
      
      child: Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0,),
      child: Text(
        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
        textAlign: TextAlign.justify,
      
      
      ),
    ),
    );

  }

}