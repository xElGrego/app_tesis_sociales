import 'package:app_tesis_sociales/src/views/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'src/config/routes.dart' as route;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  
  const MyApp({Key? key}) : super(key: key);


 void initState() {
        
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: route.controller,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF399D63),
        ),
      ),
      home: const SplashPage(),
    );
  }
}
