class DescubrimientoCelula {
  final String title;
  final String image;
  final String concepto;
  final String? object3d;

  DescubrimientoCelula(
 {
    required this.title,
    required this.image,
    required this.concepto,
    this.object3d,
  });
}

List<DescubrimientoCelula> descubrimientoCelulaList = [
  DescubrimientoCelula(

    title: 'El descubrimiento del microscopio',
    concepto:
        "Los primeros lentes de aumento fueron elaborados hacia 1600 por monjes austríacos, pero los holandeses Hans Janssen (1570–1619), óptico, y Zacharias Janssen (1588–1638), inventor, usaron un sistema de lentes que producía aumentos mayores que los obtenidos con un lente. En 1655, Robert Hooke fabricó el primer microscopio compuesto, con el cual observó y describió a las células, a las que dio ese nombre porque le recordaban a las celdas de los monjes.",
    image: 'assets/descubrimiento_celula/microscopio.jpg'
  ),
  DescubrimientoCelula(

    title: 'Desarrollo del microscopio',
    concepto:
        "El aparecimiento del microscopio permitió al ser humano observar objetos y estructuras que se escapan a la vista humana, e incluso a cualquier lupa inventada hasta ese momento, abriendo con esto un mundo nuevo de posibilidades de conocimiento.Alrededor del siglo XIX se dio un mayor desarrollo de la microscopia, y apareció el microscopio compuesto, que al inicio tenía dos lentes; sin embargo, luego se incorporó un tercero para acoplar una cámara de fotos y de video, con la cual se podían registrar los resultados, e incluso procesos en movimiento, lo que mejoró el estudio de la reproducción de las bacterias.",
    image: 'assets/descubrimiento_celula/evo_microscopio.jpg'
  ),
  DescubrimientoCelula(
   
    title: 'La teoría celular',
    image: 'assets/descubrimiento_celula/teoria.jpg',
    concepto:
        "Las células son las unidades funcionales de los seres vivos. En el interior de lacélula ocurren todas las reacciones necesarias para el mantenimiento de la vida.Las células se especializan para cumplir variadas tareas en el organismo.• Se producen nuevas células a partir de células existentes. La célula es la unidad de origen de los seres vivos. Las nuevas células adquieren la capacidad de cumplir con las mismas funciones de la célula original.",
  ),

  
];