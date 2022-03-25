class CelulaAnimalyVegetal {
  final String title;
  final String image;
  final String concepto;
  final String? object3d;

  CelulaAnimalyVegetal(
 {
    required this.title,
    required this.image,
    required this.concepto,
    this.object3d,
  });
}

List<CelulaAnimalyVegetal> celulaAnimalyVegetalList = [
  CelulaAnimalyVegetal(

    title: 'Las células de los animales',
    concepto:
        "Los perros, los lobos, las moscas, el ser humano, es decir, todos los animales del medio están constituidos por células. Estas células cuentan con membrana celular, núcleo, citoplasma y algunos organelos, pero no tienen cloroplastos que les permitan elaborar su alimento. Por esta razón, son organismos heterótrofos.",
    image: 'assets/animal_vegetal/celula_animal.jpg'
  ),
  CelulaAnimalyVegetal(

    title: 'Las células de los vegetales',
    concepto:
        "En las células de las plantas, al igual que en las células animales, se distinguen tres partes fundamentales: la membrana celular, similar a la de las células animales pero recubierta por la pared celular; el citoplasma, que contiene los organelos,y el núcleo.Las plantas, a diferencia de los animales, son seres autótrofos, es decir, sus células son capaces de fabricar la glucosa que les proporciona la energía necesaria para vivir. La síntesis de la glucosa se realiza por medio de la fotosíntesis. Para realizar este proceso, las células vegetales tienen unos organelos encargados de esta función: los cloroplastos.",
    image: 'assets/animal_vegetal/celula_vegetal.jpg'
  ),
  CelulaAnimalyVegetal(
   
    title: 'Estructura de la célula animal',
    image: 'assets/animal_vegetal/estructura_celula_animal.jpg',
    concepto:
        "Las células animales tienen formas muy diversas, debido a que no tienen pared celular. Presentan únicamente membrana plasmática que la separa del medio. Sus vacuolas son pequeñas y pueden almacenar nutrientes o sustancias de desecho.Tiene centriolos y durante la división celular el citoplasma se distribuye por estrangulamiento de la membrana celular. No posee cloroplastos, por lo tanto, no elabora su propio alimento; en cambio presenta lisosomas que digieren los nutrientes.",
  ),

   CelulaAnimalyVegetal(
   
    title: 'Estructura de la célula vegetal',
    image: 'assets/animal_vegetal/estructura_celula_vegetal.png',
    concepto:
        "Las células vegetales tienen forma prismática, las recubre una pared celular rígida formada por celulosa. Hay una gran vacuola llamada vacuola de turgencia, esta ocupa la mayor parte de la célula. No tiene centriolos y en la división celular el citoplasma se separa por crecimiento de un tabique. Contiene diferentes plastidios: cloroplastos, que realizan la fotosíntesis; cromoplastos, que acumulan pigmentos diferentes a la clorofila, y leucoplastos, que almacenan azúcares.",
  ),
  
];