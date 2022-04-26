import 'package:flutter/material.dart';

class JuegoMemoriaPage extends StatefulWidget {
  const JuegoMemoriaPage({Key? key}) : super(key: key);

  @override
  _HomePageStateJuegoMemoriaPage createState() => _HomePageStateJuegoMemoriaPage();
}

class _HomePageStateJuegoMemoriaPage extends State<JuegoMemoriaPage> {
  late List<ItemModelBacteriasForma> items;
  late List<ItemModelBacteriasForma> items2;

  int score = 0;
  bool gameOver = false;

  @override
  void initState() {
    super.initState();
    initGame();
  }

  initGame() {
    gameOver = false;
    score = 0;
    items = [
      ItemModelBacteriasForma(
          imagen: "assets/animal_vegetal/celula_animal.jpg", name: "Célula Animal", value: "Animal"),
      ItemModelBacteriasForma(
          imagen: "assets/animal_vegetal/celula_vegetal.jpg",
          name: "Célula Vegetal",
          value: "Vegetal"),
      ItemModelBacteriasForma(
          imagen: "assets/animal_vegetal/estructura_celula_animal.jpg",
          name: "Estructura Animal",
          value: "E_Animal"),
      ItemModelBacteriasForma(
          imagen: "assets/animal_vegetal/estructura_celula_vegetal.png",
          name: "Estructura Vegetal",
          value: "E_Vegetal"),
      /* ItemModelBacteriasForma(
          imagen: "assets/animal_vegetal/vibriones.jpg",
          name: "Estructura Vegetal",
          value: "E_Vegetal"), */
    ];
    items2 = List<ItemModelBacteriasForma>.from(items);
    items.shuffle();
    items2.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    if (items.length == 0) gameOver = true;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Actividad drag and drop',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text.rich(TextSpan(children: [
              const TextSpan(text: "Puntaje: "),
              TextSpan(
                  text: "$score",
                  style: const TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ))
            ])),
            if (!gameOver)
              Row(
                children: <Widget>[
                  Column(
                      children: items.map((item) {
                    return Container(
                      decoration: const BoxDecoration(
                        color: Colors.red,
                      ),
                      margin: const EdgeInsets.all(8.0),
                      child: Draggable<ItemModelBacteriasForma>(
                        data: item,
                        childWhenDragging: Image.asset(
                          item.imagen,
                          fit: BoxFit.cover,
                          height: 80,
                        ),
                        feedback: Image.asset(
                          item.imagen,
                          fit: BoxFit.cover,
                          height: 80,
                        ),
                        child: Image.asset(
                          item.imagen,
                          fit: BoxFit.cover,
                          height: 80,
                        ),
                      ),
                    );
                  }).toList()),
                  Spacer(),
                  Column(
                      children: items2.map((item) {
                    return DragTarget<ItemModelBacteriasForma>(
                      onAccept: (receivedItem) {
                        if (item.value == receivedItem?.value) {
                          setState(() {
                            items.remove(receivedItem);
                            items2.remove(item);
                            score += 10;
                            item.accepting = false;
                          });
                        } else {
                          setState(() {
                            score -= 5;
                            item.accepting = false;
                          });
                        }
                      },
                      onLeave: (receivedItem) {
                        setState(() {
                          item.accepting = false;
                        });
                      },
                      onWillAccept: (receivedItem) {
                        setState(() {
                          item.accepting = true;
                        });
                        return true;
                      },
                      builder: (context, acceptedItems, rejectedItem) => Container(
                        color: item.accepting ? Colors.black : Colors.white,
                        height: 80,
                        width: 120,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(8.0),
                        child: Text(
                          item.name,
                          style: const TextStyle(
                            color: Colors.teal,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    );
                  }).toList()),
                ],
              ),
            if (gameOver)
              const Text(
                "Juego terminado",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
            if (gameOver)
              Center(
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.pink,
                  child:  const Text("Juego nuevo"),
                  onPressed: () {
                    initGame();
                    setState(() {});
                  },
                ),
              )
          ],
        ),
      ),
    );
  }
}

class ItemModelBacteriasForma {
  final String name;
  final String value;
  final String imagen;
  bool accepting;

  ItemModelBacteriasForma({required this.name, required this.value, required this.imagen, this.accepting = false});
}
