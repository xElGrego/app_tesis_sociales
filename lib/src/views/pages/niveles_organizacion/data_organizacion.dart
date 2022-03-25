class NivelesOrganizacion {
  final String title;
  final String image;
  final String concepto;
  final String? object3d;

  NivelesOrganizacion(
 {
    required this.title,
    required this.image,
    required this.concepto,
    this.object3d,
  });
}

List<NivelesOrganizacion> nivelesOrganizacionList = [
  NivelesOrganizacion(

    title: 'Niveles de organización abiótica',
    concepto:
        "Todos los seres vivos están conformados por células. La célula es la unidad estructural, funcional y de origen de los seres vivos. Las células cumplen todas las funciones de los seres vivos, como la eliminación de desechos, la respiración y la reproducción, que origina nuevas células y permite la formación de tejidos y órganos.",
    image: 'assets/niveles_organizacion/abiotica.jpg'
  ),
  NivelesOrganizacion(

    title: 'Niveles de organización biológica',
    concepto:
        "La organización interna de los seres vivos corresponde a células, tejidos, órganos y sistemas. Los individuos, las poblaciones, las comunidades, los ecosistemas y la biosfera son niveles exclusivos para los seres vivos.",
    image: 'assets/niveles_organizacion/biologica.jpg'
  ),

 NivelesOrganizacion(
   
    title: 'Niveles de organización ecológica',
    concepto:
        "Los movimientos de las plantas se llaman tropismos. Estos son respuestas a estímulos ambientales, que consisten en el movimiento lento, a veces con crecimiento, de alguna o algunas partes de la planta, como raíces, tallos, flores y hojas.Cuando el movimiento va en la dirección del estímulo, se dice que es positivo, y cuando va en sentido contrario, se dice que es negativo. Así, tenemos el geotropismo y fototropismo.",
        image: 'assets/niveles_organizacion/ecologica.jpg'
  ),

   
  NivelesOrganizacion(
   
    title: 'Los organismos unicelulares',
    image: 'assets/niveles_organizacion/unicelular.jpg',
    concepto:
        "Están constituidos por una sola célula que realiza todas las funciones vitales: capta lo que ocurre a su alrededor, se mueve hábilmente en busca de alimento, expulsa agua y desechos, escapa de los depredadores y mantiene el equilibrio interno. Las bacterias, el paramecio y la ameba son ejemplos de organismosa unicelulares.",
  ),

  NivelesOrganizacion(
   
    title: 'Los organismos pluricelulares ',
    image: 'assets/niveles_organizacion/multicelular.jpg',
    concepto:
        "Están formados por muchas células. Tienen mayor tamaño que los seres unicelulares, aumentan su tiempo de vida como consecuencia del reemplazo de las células deterioradas por otras, incrementan su equilibrio interno y tienen más probabilidades de defenderse de los depredadores. Algunos organismos pluricelulares son los animales y las plantas.",
  ),


];