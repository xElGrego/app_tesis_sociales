class DataEstructuraCelular {
  final String title;
  final String image;
  final String concepto;
  final String? object3d;

  DataEstructuraCelular(
 {
    required this.title,
    required this.image,
    required this.concepto,
    this.object3d,
  });
}

List<DataEstructuraCelular> dataEstructuraCelularList = [
  DataEstructuraCelular(

    title: 'EL Citoplasma',
    concepto:
        "El citoplasma se encuentra debajo de la membrana de las células y que, a su vez, recubre el núcleo celular. Se trata de una de las partes esenciales de las células.Se conforma básicamente por el citosol (agua, sales y proteínas que, en su conjunto, le otorgan una densidad gelatinosa), el citoesqueleto (proteínas que le dan soporte a la célula) y de orgánulos u organelos (compartimentos de funciones especializadas). ",
    image: 'assets/estructura_celular/citoplasma.jpg'
  ),
  DataEstructuraCelular(

    title: 'Principales organelos celulares',
    concepto:
        "El retículo endoplasmático es una red de membranas aplanadas dispersas en el citoplasma. Este sistema de membranas es la vía que permite el movimiento de materiales desde el núcleo hacia el exterior de la célula y viceversa. Existen dos clases de retículo endoplasmático: el rugoso y el liso. El rugoso tiene su superficie cubierta por ribosomas y está conectado con la membrana nuclear, a través de la cual sale la información necesaria para la síntesis de proteínas",
    image: 'assets/estructura_celular/organelos.jpg'
  ),
  DataEstructuraCelular(
   
    title: 'El aparato de Golgi',
    image: 'assets/estructura_celular/golgi.jpg',
    concepto:
        "Es un organelo formado por un conjunto de sacos membranosos aplanados y apilados unos encima de otros. Su función principal es modificar y empacar proteínas producidas por el retículo endoplasmático rugoso. Prepara los materiales para que sean liberados fuera de la célula en un proceso llamado exocitosis. También cumple importantes funciones en la síntesis de los lípidos y carbohidratos.",
  ),

  
];