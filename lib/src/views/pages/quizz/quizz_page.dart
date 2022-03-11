import 'package:flutter/material.dart';

class QuizzPage extends StatelessWidget {
  const QuizzPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Quizz"),
        ),
        body: Center(
          child: Image.asset(
            "assets/fotos/construccion.jpg",
          ),
        ),
      ),
    );
  }
}
