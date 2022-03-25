// ignore_for_file: deprecated_member_use

import 'package:app_tesis_sociales/src/views/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Image(
              image: const AssetImage("assets/homepage/celula.png"),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.4),
              colorBlendMode: BlendMode.darken,
            ),
            SizedBox(
              height: 370.0,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: const Text(
                      "Ciencias Naturales",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xffffb451),
                        fontSize: 30,
                        fontFamily: "SpecialElite",
                      ),
                    ),
                  ),
                    const SizedBox(height: 50.0),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: const Text(
                      "Aplicación de Adriana Alcivar",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xffffb451),
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: const Text(
                      "Universidad de Guayaquil",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xffffb451), fontSize: 30, fontFamily: "SpecialElite"),
                    ),
                  ),
                  const SizedBox(
                    height: 80.0,
                  ),
                  ButtonTheme(
                    minWidth: MediaQuery.of(context).size.width / 1.5,
                    height: 50.0,
                    child: RaisedButton(
                      // borderSide: BorderSide(color: Colors.white),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      onPressed: () {
                        Navigator.popAndPushNamed(context, 'home');
                      },
                      color: const Color(0xFF399D63),
                      child: const Text(
                        "Iniciar",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
