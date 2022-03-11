import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'src/views/pages/seres_vivos/seres_home_page.dart';

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
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF399D63),
        ),
      ),
      home: const SeresVivosHome(),
    );
  }
}
