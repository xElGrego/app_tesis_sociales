import 'package:flutter/material.dart';

class TareasPage extends StatelessWidget {
  const TareasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child:  Scaffold(
        body: Center(
          child: Text("Tareas"),
        ),
      ),
    );
  }
}
