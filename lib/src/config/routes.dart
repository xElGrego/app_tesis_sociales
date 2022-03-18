import 'package:app_tesis_sociales/src/views/pages/seres_vivos/seres_home_page.dart';
import 'package:flutter/material.dart';

import '../views/pages/home/home_page.dart';
import '../views/pages/tareas/tareas_page.dart';

// Route Names
const String homePage = 'home';
const String taskPage = 'tareas';
const String contentPage = 'content';

// Control our page route flow
Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case homePage:
      return MaterialPageRoute(builder: (context) => const HomePage());
    case taskPage:
      return MaterialPageRoute(builder: (context) => const TareasPage());
    case contentPage:
      return MaterialPageRoute(builder: (context) => const SeresVivosHome());

    default:
      throw ('This route name does not exit');
  }
}
