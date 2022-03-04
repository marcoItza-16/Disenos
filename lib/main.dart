import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:disenos/src/pages/basico_page.dart';
import 'package:disenos/src/pages/scroll_page.dart';
import 'package:disenos/src/pages/botones_page.dart';

//Diseños con Scroll 4
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light.copyWith(

      statusBarColor: Color.fromARGB(0, 255, 255, 255)
    ));



//commit Diseños Basicos
    //Diseño Basico 3
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'basico',
      routes: {
        'basico'  :  (BuildContext context) => BasicoPage(),
        'scroll'  :  (BuildContext context) => ScrollPage(),
        'botones'  :  (BuildContext context) => BotonesPage(),

      }, 
      
    );
  }
}
