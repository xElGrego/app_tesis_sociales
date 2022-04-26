import 'package:app_tesis_sociales/src/views/pages/home/producto.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final int itemIndex;
  final Product product;
  final VoidCallback press;

  const ProductCard({Key? key, required this.itemIndex, required this.product, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 20.0 / 2,
      ),
      height: 160,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            // Those are our background
            Container(
              height: 136,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: const Color(0xFF399D63),
                  boxShadow: const [
                    BoxShadow(blurRadius:2, color: Color(0xFF399D63)),
                  ]
                  /* boxShadow: [kDefaultShadow], */
                  ),
              child: Container(
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
            // our product image
            Positioned(
              top: 0,
              right: 0,
              child: Hero(
                tag: '${product.id}',
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 140,
                  width: 130,
                  child: Image.asset(
                    product.image!,
                    fit: BoxFit.contain,
                    height: 90,
                    width: 40,
                  ),
                ),
              ),
            ),
            // Product title and price
            Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                height: 136,
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Text(
                        product.title!,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    // it use the available space
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0 * 1.5, // 30 padding
                        vertical: 20.0 / 4, // 5 top and bottom
                      ),
                      decoration:  BoxDecoration(
                        color:  const Color(0xFF399D63).withOpacity(0.6),
                        borderRadius: const  BorderRadius.only(
                          bottomLeft: Radius.circular(22),
                          topRight: Radius.circular(22),
                        ),
                      ),
                      child: Text(
                        "",
                        style: Theme.of(context).textTheme.button,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
