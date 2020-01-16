
import 'package:desings/src/botones_page.dart';
import 'package:desings/src/pages/basico_page.dart';
import 'package:desings/src/pages/scroll_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {

  //  SystemChrome.setSystemUIOverlayStyle(
  //     SystemUiOverlayStyle.dark.copyWith(
  //       statusBarColor: Colors.transparent,
  //       statusBarIconBrightness: Brightness.light
  //     )
  //   );

    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent
));

// Para los que estén desarrollando en Android y 
// hayan pasado por esta clase, pueden ver que
//  la aplicación queda horrible, pero si 
//  agregan esto

// SystemChrome.setSystemUIOverlayStyle(
//       SystemUiOverlayStyle.dark.copyWith(
//         statusBarColor: Colors.transparent,
//         statusBarIconBrightness: Brightness.light
//       )
//     );
// el fondo a la Status Bar de Android pasa a ser 
// Transparente y los Iconos pueden ser dark o 
// light, dejé light para que quedara igual que
//  en el vídeo, solo que no tenemos notch aun 
//  en los skins de android


    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      
      initialRoute: 'botones',
      routes: {
        'basico'   : (BuildContext context) => BasicoPage(),
        'scroll'   : (BuildContext context) => ScroollPage(),
        'botones'   : (BuildContext context) => BotonesPage(),




      },
    );
  }
}