
import 'package:app_tesis_sociales/src/views/pages/seres_vivos/data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../seres_vivos/detalle_page.dart';


class TeoriaCelularPage extends StatefulWidget {
  const TeoriaCelularPage({Key? key}) : super(key: key);

  @override
  _TeoriaCelularPageState createState() => _TeoriaCelularPageState();
}

class _TeoriaCelularPageState extends State<TeoriaCelularPage> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(changedesc);
  }

  changedesc() {
    var value = _scrollController.offset.round();
    var descIndex = (value / 150).round();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: _scrollController,
      children: [
        SizedBox(
          height:350.0,
          child: ListView.builder(
            itemCount: seresVivosList.length,
            padding: const EdgeInsets.only(left: 25.0),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Stack(
                  children: <Widget>[
                    SizedBox(
                      height: 305.0,
                      width: 225.0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: const Color(0xFF399D63),
                        ),
                        height: 250.0,
                        width: 225.0,
                        child: Column(
                          children: <Widget>[
                            const SizedBox(height: 20.0),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Image(
                                image: AssetImage(
                                  seresVivosList[index].image,
                                ),
                                height: 135.0,
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                const SizedBox(width: 25.0),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    const SizedBox(height: 20.0),
                                    const Text(
                                      'Tema:',
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF8AC7A4),
                                      ),
                                    ),
                                    Text(
                                      seresVivosList[index].title,
                                      style: const TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                const SizedBox(width: 25.0),
                                Container(
                                  height: 30.0,
                                  width: 30.0,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color(0xFF8AC7A4),
                                      style: BorderStyle.solid,
                                      width: 0.5,
                                    ),
                                    borderRadius: BorderRadius.circular(5.0),
                                    color: const Color(0xFF399D63),
                                  ),
                                  child: Icon(
                                    Icons.wb_sunny,
                                    color: Colors.white.withOpacity(0.4),
                                    size: 20.0,
                                  ),
                                ),
                                const SizedBox(width: 15.0),
                                Container(
                                  height: 30.0,
                                  width: 30.0,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color(0xFF8AC7A4),
                                      style: BorderStyle.solid,
                                      width: 0.5,
                                    ),
                                    borderRadius: BorderRadius.circular(5.0),
                                    color: const Color(0xFF399D63),
                                  ),
                                  child: Icon(
                                    Icons.coronavirus,
                                    color: Colors.white.withOpacity(0.4),
                                    size: 20.0,
                                  ),
                                ),
                                const SizedBox(width: 15.0),
                                Container(
                                  height: 30.0,
                                  width: 30.0,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color(0xFF8AC7A4),
                                      style: BorderStyle.solid,
                                      width: 0.5,
                                    ),
                                    borderRadius: BorderRadius.circular(5.0),
                                    color: const Color(0xFF399D63),
                                  ),
                                  child: Icon(
                                    Icons.coronavirus_sharp,
                                    color: Colors.white.withOpacity(0.4),
                                    size: 20.0,
                                  ),
                                ),
                                const SizedBox(width: 10.0),
                                Container(
                                  height: 30.0,
                                  width: 30.0,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF399D63),
                                  ),
                                  child: Icon(
                                    Icons.help_outline,
                                    color: Colors.white.withOpacity(0.4),
                                    size: 20.0,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 90.0,
                        top: 270.0,
                      ),
                      child: Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: const Color(0xFF399D63),
                          border: Border.all(
                            color: const Color(0xFF8AC7A4),
                            style: BorderStyle.solid,
                            width: 2,
                          ),
                        ),
                        child: Center(
                          child: IconButton(
                            icon: const Icon(Icons.arrow_forward_sharp),
                            color: Colors.white,
                            onPressed: () {
                              Get.to(
                                DetalleSeresVivosPage(seresVivosList[index]),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
