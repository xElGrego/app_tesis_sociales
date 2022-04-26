import 'package:app_tesis_sociales/src/views/pages/home/producto.dart';
import 'package:app_tesis_sociales/src/views/pages/home/producto_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        appBar: AppBar(
          title:const Text("Aprendamos Ciencias"),
        ),
        body: Column(
          children: <Widget>[
            const SizedBox(height: 20.0 / 2),
            Expanded(
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(top: 70),
                    decoration: const BoxDecoration(
                      color: Color(0xFFF1EFF1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                  ),
                  ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (context, index) => ProductCard(
                      itemIndex: index,
                      product: products[index],
                      press: products[index].accion,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
