import 'package:app_tesis_sociales/src/views/pages/actividades/drap_drop.dart';
import 'package:app_tesis_sociales/src/views/pages/actividades/juego_memoria.dart';
import 'package:app_tesis_sociales/src/views/pages/teoria_celular/teoria_celular_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../celula_animal_y_vegeltal/celula_animavegetal_page.dart';
import '../descubrimiento_celula/descubrimiento_celula.dart';
import '../estructura_celular/estructura_celular_page.dart';
import '../niveles_organizacion/niveles_organizacion_home.dart';
import 'items.dart';

class SeresVivosHome extends StatefulWidget {
  const SeresVivosHome({Key? key}) : super(key: key);

  @override
  _SeresVivosHomeState createState() => _SeresVivosHomeState();
}

class _SeresVivosHomeState extends State<SeresVivosHome> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(vsync: this, length: 6);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[

            const Padding(
              padding: EdgeInsets.all(14.0),
              child: Text(
                'PROPIEDADES DE LOS SERES VIVOS ',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 30.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: TabBar(
                controller: tabController,
                indicatorColor: Colors.transparent,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey.withOpacity(0.5),
                isScrollable: true,
                tabs: const [
                  Tab(
                    child: Text(
                      'Los seres vivos',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Niveles de Organización',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Descubrimiento de la Célula',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'La teoría celular',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'La estructura celular',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Célula Animal y Célula Vegetal',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height - 320.0,
              child: TabBarView(
                controller: tabController,
                children: const [
                  ItemsPage(), //Seres vivo HomePage
                  NivelesOrganizacionHomePage(),
                  DescubrimientoCelulaPage(),
                  TeoriaCelularPage(),
                  EstructuraCelularPage(),
                  CelulaAnimalVegatalPage(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: ButtonTheme(
                height: 50.0,
                child: RaisedButton(
                  // borderSide: BorderSide(color: Colors.white),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const JuegoMemoriaPage(),
                      ),
                    );
                  },
                  color: const Color(0xFF399D63),
                  child: const Text(
                    "Juego Drag and Drop",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: ButtonTheme(
                height: 50.0,
                child: RaisedButton(
                  // borderSide: BorderSide(color: Colors.white),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DrapDropPage(),
                      ),
                    );
                  },
                  color: const Color(0xFF399D63),
                  child: const Text(
                    "Juego de memoria",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
