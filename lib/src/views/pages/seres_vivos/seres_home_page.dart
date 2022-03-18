import 'package:app_tesis_sociales/src/views/pages/teoria_celular/teoria_celular_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../celula_animal_y_vegeltal/celula_animavegetal_page.dart';
import '../descubrimiento_celula/descubrimiento_celula.dart';
import '../estructura_celular/estructura_celular_page.dart';
import '../niveles_organizacion/niveles_organizacion_home.dart';
import '../quizz/quizz_page.dart';
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
            /* const SizedBox(height: 15.0), */
            /*  Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () {},
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Colors.grey.withOpacity(0.3),
                    mini: true,
                    elevation: 0.0,
                    child: const Icon(
                      Icons.shopping_cart,
                      color: Colors.black,
                      size: 17.0,
                    ),
                  ),
                ],
              ),
            ), */
            const Padding(
              padding: EdgeInsets.all(14.0),
              child: Text(
                'PROPIEDADES DE LOS SERES VIVOS ',
                /* Y SU IMPORTANCIA PARA EL MANTENIMIENTO DE LA VIDA EN LA TIERRA */
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
              height: MediaQuery.of(context).size.height - 300.0,
              child: TabBarView(
                controller: tabController,
                children:  const [
                   ItemsPage(), //Seres vivo HomePage
                  NivelesOrganizacionHomePage(),
                  DescubrimientoCelulaPage(),
                  TeoriaCelularPage(),
                  EstructuraCelularPage(),
                  CelulaAnimalVegatalPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
