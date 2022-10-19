import 'package:flutter/material.dart';
import 'package:nasaapp/Pages/pages.dart';

//Esta clase es la que se ejecuta inicialmente  y envuelve a las demas

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {'/': (context) => const Pages()},
    );
  }
}
