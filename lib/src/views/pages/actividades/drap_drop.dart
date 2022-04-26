import 'package:app_tesis_sociales/src/views/pages/home/home_page.dart';
import 'package:flutter/material.dart';

import 'data_dragdrop.dart';
import 'modelo_drag_drop.dart';

class DrapDropPage extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<DrapDropPage> {
  List<TileModelAreas> gridViewTiles = [];
  List<TileModelAreas> questionPairs = [];

  @override
  void initState() {
    super.initState();
    reStart();
  }

  void reStart() {
    myPairs = getPairs();
    myPairs.shuffle();

    gridViewTiles = myPairs;
    Future.delayed(const Duration(seconds: 3), () {
      // Here you can write your code
      setState(() {
        print("2 segundos");
        // Here you can write your code for open new view
        questionPairs = getQuestionPairs();
        gridViewTiles = questionPairs;
        selected = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Juego de Memoria"),
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            child: Column(
              children: <Widget>[
            
                points != 800
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "$points/700",
                            style: const TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Text(
                            "Puntaje",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      )
                    : Container(),
                const SizedBox(height: 10),
                points != 700
                    ? GridView(
                        shrinkWrap: true,
                        //physics: ClampingScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                          mainAxisSpacing: 0.0,
                          maxCrossAxisExtent: 150.0,
                        ),
                        children: List.generate(
                          gridViewTiles.length,
                          (index) {
                            return Tile(
                              imagePathUrl: gridViewTiles[index].getImageAssetPath(),
                              tileIndex: index,
                              parent: this,
                            );
                          },
                        ),
                      )
                    : Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                points = 0;
                                reStart();
                              });
                            },
                            child: Center(
                              child: Container(
                                height: 50,
                                width: 200,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                child: const Text(
                                  "Repetir",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>  HomePage(),
                                ),
                              );
                            },
                            child: Container(
                              height: 50,
                              width: 200,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue, width: 2),
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: const Text(
                                "Ir al menú",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Tile extends StatefulWidget {
  String? imagePathUrl;
  int? tileIndex;
  _HomeState? parent;

  Tile({this.imagePathUrl, this.tileIndex, this.parent});

  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!selected) {
          setState(() {
            myPairs[widget.tileIndex!].setIsSelected(true);
          });
          if (selectedTile != "") {
            /// Se prueba si los don son iguales
            if (selectedTile == myPairs[widget.tileIndex!].getImageAssetPath()) {
              points = points + 100;

              TileModelAreas tileModel = TileModelAreas();

              selected = true;
              Future.delayed(const Duration(seconds: 2), () {
                tileModel.setImageAssetPath("");
                myPairs[widget.tileIndex!] = tileModel;
                myPairs[selectedIndex] = tileModel;
                widget.parent?.setState(() {});
                setState(() {
                  selected = false;
                });
                selectedTile = "";
              });
            } else {
              selected = true;
              Future.delayed(const Duration(seconds: 2), () {
                widget.parent!.setState(() {
                  myPairs[widget.tileIndex!].setIsSelected(false);
                  myPairs[selectedIndex].setIsSelected(false);
                });
                setState(() {
                  selected = false;
                });
              });

              selectedTile = "";
            }
          } else {
            setState(() {
              selectedTile = myPairs[widget.tileIndex!].getImageAssetPath();
              selectedIndex = widget.tileIndex!;
            });
          }
        }
      },
      child: Container(
        margin: const EdgeInsets.all(5),
        child: myPairs[widget.tileIndex!].getImageAssetPath() != ""
            ? Image.asset(
                myPairs[widget.tileIndex!].getIsSelected()
                    ? myPairs[widget.tileIndex!].getImageAssetPath()
                    : widget.imagePathUrl!,
                fit: BoxFit.cover,
                scale: 10,
                width: double.infinity,
                height: double.infinity,
              )
            : Container(
                color: Colors.white,
                child: Image.asset("assets/correct.png"),
              ),
      ),
    );
  }
}
