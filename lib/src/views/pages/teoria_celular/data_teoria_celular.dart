class TeoriaCelular {
  final String title;
  final String image;
  final String concepto;
  final String? object3d;

  TeoriaCelular(
 {
    required this.title,
    required this.image,
    required this.concepto,
    this.object3d,
  });
}

List<TeoriaCelular> teoriaCelularList = [
  TeoriaCelular(

    title: 'Las células procariotas',
    concepto:
        "Aparecieron en la Tierra hace unos 3 500 millones de años y se encuentran adaptadas a todo tipo de hábitat. Dentro de este grupo se encuentran las bacterias y las cianobacterias.Las células procariotas no poseen núcleo definido porque no tienen una membrana nuclear y tampoco otras membranas internas. Casi todas estas células están rodeadas por una pared celular que las protege y las comunica con el exterior.",
    image: 'assets/teoria_celular/procariota.jpg'
  ),
  TeoriaCelular(

    title: 'Las células eucariotas',
    concepto:
        "Se cree que las células eucariotas se originaron hace cerca de 1 500 millones de años. Son más grandes que las procariotas, pues tienen una estructura interna más compleja que les permite realizar de forma más eficiente algunos procesos como adquirir nutrientes y eliminar desechos.Las células eucariotas se caracterizan porque tienen su información genética dentro de una membrana nuclear y cuentan con organelos formados por membranas, como las mitocondrias y el retículo endoplasmático, entre otros.",
    image: 'assets/teoria_celular/eucariota.jpg'
  ),
  TeoriaCelular(
   
    title: 'Las células según su tamaño y su forma',
    image: 'assets/teoria_celular/tamanio.jpg',
    concepto:
        "El tamaño de las células está condicionado por las necesidades de alimentación y eliminación de desechos. Así, las células pueden ser microscópicas como las bacterias, y macroscópicas como la yema de huevo de gallina.La forma de las células es muy variada y depende de condiciones como la tensión superficial, la viscosidad, el citoplasma y la consistencia de la membrana. Por su forma, las células pueden ser aplanadas, alargadas, poligonales, irregulares y esferoides.",
  ),
  
];