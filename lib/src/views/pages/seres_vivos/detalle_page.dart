import 'package:flutter/material.dart';

import 'data.dart';

class DetalleSeresVivosPage extends StatelessWidget {
  final SeresVivos seresVivos;
  // ignore: use_key_in_widget_constructors
  const DetalleSeresVivosPage(this.seresVivos);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height - 140,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color(0xFF399D63),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 2,
                child: Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                    color: Colors.white,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),

              /*  Positioned(
                top: 10.0,
                left: MediaQuery.of(context).size.width - 30.0,
                child: Container(
                  height: 18.0,
                  width: 18.0,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(9.0), color: Colors.white),
                  child: const Center(
                    child: Text(
                      '1',
                      style: TextStyle(color: Color(0xFF399D63), fontFamily: 'Montserrat'),
                    ),
                  ),
                ),
              ), */
              Padding(
                padding: const EdgeInsets.only(left: 25.0, top: 60.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Tema:',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF8AC7A4),
                      ),
                    ),
                    Text(
                      seresVivos.title,
                      style: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 35.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    const SizedBox(height: 15.0),
                   /*  const Text(
                      'FROM',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF8AC7A4),
                      ),
                    ),
                    const Text(
                      '\$30',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 25.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    const Text(
                      'SIZES',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF8AC7A4),
                      ),
                    ),
                    const Text(
                      'Small',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 25.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ), */
                    const SizedBox(height: 10.0),
                  ],
                ),
              ),
              Positioned(
                top: (MediaQuery.of(context).size.height / 2) - 215.0,
                left: (MediaQuery.of(context).size.width / 2) - 115.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: AssetImage(seresVivos.image),
                    fit: BoxFit.contain,
                    height:  MediaQuery.of(context).size.height - 510,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height - 320.0,
                  left: 20.0,
                  right: 15.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Lo que deberias conocer...',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 12.0),
                    Text(
                      seresVivos.concepto,
                      style: const TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 14.0,
                      ),
                    ),

                    /* const Text(
                      'Details',
                      style: TextStyle(
                          fontFamily: 'Montserrat', fontSize: 20.0, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 10.0),
                    const Text(
                      'Plant height: 35-45cm;',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 14.0,
                      ),
                    ),
                    const Text(
                      'Nursery pot width: 12cm',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 14.0,
                      ),
                    ), */
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
