class SeresVivos {
  final String title;
  final String image;
  final String concepto;
  final String? object3d;

  SeresVivos(
 {
    required this.title,
    required this.image,
    required this.concepto,
    this.object3d,
  });
}

List<SeresVivos> seresVivosList = [
  SeresVivos(

    title: 'ORGANIZACIÓN',
    concepto:
        "Todos los seres vivos están conformados por células. La célula es la unidad estructural, funcional y de origen de los seres vivos. Las células cumplen todas las funciones de los seres vivos, como la eliminación de desechos, la respiración y la reproducción, que origina nuevas células y permite la formación de tejidos y órganos.",
    image: 'assets/seres_vivos/celula.jpg'
  ),
  SeresVivos(

    title: 'METABOLISMO',
    concepto:
        "Los seres vivos se nutren para poder vivir, ya que requieren energía y nutrientes para que su cuerpo funcione de manera correcta. La nutrición es el proceso mediante el cual los seres vivos toman el alimento del medio y lo descomponen para que libere los nutrientes como carbono, hidrógeno y oxígeno, entre otros. Una vez liberados, las células los usan en sus funciones vitales.",
    image: 'assets/seres_vivos/metabolismo.png'
  ),
  SeresVivos(
   
    title: 'HOMEOSTASIS',
    image: 'assets/seres_vivos/homeostasis.jpg',
    concepto:
        "Para mantenerse con vida y funcionar de forma adecuada, los seres vivos conservan en equilibrio las condiciones internas de su cuerpo. Este proceso se conoce con el nombre de homeostasis. Entre las condiciones que los seres vivos regulan están la temperatura corporal, la cantidad de agua en el cuerpo, la concentración de laa glucosa (azúcar) en la sangre, entre otros",
  ),
 SeresVivos(
   
    title: 'MOVIMIENTO',
    concepto:
        "Los movimientos de las plantas se llaman tropismos. Estos son respuestas a estímulos ambientales, que consisten en el movimiento lento, a veces con crecimiento, de alguna o algunas partes de la planta, como raíces, tallos, flores y hojas.Cuando el movimiento va en la dirección del estímulo, se dice que es positivo, y cuando va en sentido contrario, se dice que es negativo. Así, tenemos el geotropismo y fototropismo.",
        image: 'assets/seres_vivos/tropismo.jpg'
  ),

   
  SeresVivos(
   
    title: 'DESARROLLO',
    image: 'assets/seres_vivos/desarrollo.jpg',
    concepto:
        "Los organismos aumentan de tamaño al adquirir y procesar los nutrientes. Muchas veces este proceso no se limita a la acumulación de materia, sino que implica cambios mayores.En algún momento de su vida, todos los organismos crecen, aunque a veces el crecimiento sea imperceptible a nuestra vista. Para crecer, los unicelulares aumentan el tamaño de su célula, y los multicelulares aumentan el número de células.",
  ),

  SeresVivos(
   
    title: 'REPRODUCCIÓN',
    image: 'assets/seres_vivos/reproduccion.jpg',
    concepto:
        "Los seres vivos se reproducen. Es la función mediante la cual los seres vivos dan origen a otros seres semejantes que conservan las características de la especie.Existen diversas formas de reproducción; por ejemplo, algunos ponen huevos, como las aves, mientras otros paren a sus crías, como las vacas.",
  ),

  SeresVivos(
   
    title: 'ADAPTACIÓN',
    image: 'assets/seres_vivos/adaptacion.jpg',
    concepto:
        "Es la mejora de las posibilidades de supervivencia de los individuos que muestran una determinada característica.El medio ambiente ha sufrido y sufre varios cambios a lo largo de la historia del planeta, y esto obliga a los seres vivos a realizar modificaciones que les permitan sobrevivir a los cambios ocurridos. Estos cambios pueden ser de tres clases:",
  ),
  
];