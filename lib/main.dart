import 'package:flutter/material.dart';
import 'package:flutter_vmo_v3/pages/servicios_page.dart';
import 'package:flutter/services.dart';
 
void main() { 
  runApp(MyApp()); 
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.grey,
    statusBarIconBrightness: Brightness.light
  ));
}
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: ServiciosPage.routeName,
      routes: {
        ServiciosPage.routeName : ( _ ) => ServiciosPage()
      },
    );
  }
}