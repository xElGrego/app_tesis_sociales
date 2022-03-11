import 'package:flutter/material.dart';

class NivelesOrganizacionHomePage extends StatelessWidget {
  const NivelesOrganizacionHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Image.asset(
            "assets/fotos/construccion.jpg",
          ),
        ),
      ),
    );
  }
}
