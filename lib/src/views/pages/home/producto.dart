import 'package:app_tesis_sociales/src/views/pages/tareas/tareas_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../seres_vivos/seres_home_page.dart';

class Product {
  final int? id, price;
  final String? title, description, image;
  final VoidCallback accion;

  Product(
      {required this.accion,
      this.id,
      this.price,
      this.title,
      this.description,
      this.image});
}

// list of products
// for our demo
List<Product> products = [
  Product(
    id: 1,
    price: 56,
    title: "Contenido",
    image: "assets/homepage/Icon1.png",
    accion: () {
      Get.to(const SeresVivosHome());
    },
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 4,
    price: 68,
    title: "Tareas",
    image: "assets/homepage/Icon3.png",
    accion: () {
      Get.to(const TareasPage());
    },
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 9,
    price: 39,
    title: "Actividades",
    image: "assets/homepage/Icon4.png",
    accion: () async {
      {
        const url = 'https://es.educaplay.com/recursos-educativos/11708943-ciencias_naturales.html';
        // ignore: unnecessary_null_comparison
        if (await canLaunch(url) != null) {
          await launch(url);
        } else {
          throw {print("Valimos")};
        }
      }
    },
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
];
