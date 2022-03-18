import 'package:app_tesis_sociales/src/views/pages/tareas/tareas_page.dart';
import 'package:flutter/material.dart';

import '../../widgets/category_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Transform.rotate(
                  origin: const Offset(10, -80),
                  angle: 2.4,
                  child: Container(
                    margin: const EdgeInsets.only(
                      left: 75,
                      top: 30,
                    ),
                    height: 400,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      gradient: const LinearGradient(
                        begin: Alignment.bottomLeft,
                        colors: [
                          Color(0xFF399D63),
                          Color(0xFF399D63),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Nombre app',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Una pequeña descripción de la aplicación',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 90),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CatigoryW(
                                  image: 'assets/homepage/Icon1.png',
                                  text: 'Contenido',
                                  color: const Color(0xFF47B4FF),
                                   onPressed: () {
                                      Navigator.pushNamed(context, 'content');
                                  },
                                ),
                                
                                  CatigoryW(
                                  image: 'assets/homepage/Icon3.png',
                                  text: 'Tareas',
                                  color: const Color(0xFFFD47DF),
                                  onPressed: () {
                                      Navigator.pushNamed(context, 'tareas');
                                  },
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                
                                CatigoryW(
                                  image: 'assets/homepage/Icon4.png',
                                  text: 'Actividades',
                                  color: const Color(0xFFFD8C44),
                                  onPressed: () async {
                                  const url ='https://es.educaplay.com/recursos-educativos/11708943-ciencias_naturales.html';
                                  if (await canLaunch(url) != null) {
                                    await launch(url);
                                  } else {
                                    throw {print("Valimos")};
                                  }
                                },
                                 
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
