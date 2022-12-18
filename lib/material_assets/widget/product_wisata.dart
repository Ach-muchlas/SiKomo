import 'package:flutter/material.dart';
import 'package:sikomo/material_assets/color/colors.dart';
import 'package:sikomo/material_assets/font/typography.dart';

class ProductWisata extends StatelessWidget {
  const ProductWisata(
      {super.key,
      required this.assetImage,
      required this.placeName,
      required this.rating,
      required this.price,
      this.onTap});

  final String assetImage;
  final String placeName;
  final String rating;
  final Function()? onTap;
  final String price;

  @override
  Widget build(BuildContext context) {
    return
        // image backgorund
        GestureDetector(
      onTap: onTap,
      child: Container(
        height: 175,
        width: 169,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(assetImage), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                blurRadius: 1,
                color: Color.fromARGB(255, 224, 219, 219),
              )
            ]),

        // content
        child: Stack(
          children: [
            // place name text
            Positioned(
              left: 10,
              child: Text(
                placeName,
                style: Typograph.regulerMedium.copyWith(color: Colors.white),
              ),
            ),

            // place price text
            Positioned(
                left: 10,
                bottom: 11,
                child: Text(
                  price,
                  style: Typograph.regulerMedium.copyWith(color: Colors.white),
                )),

            // rating of product
            Positioned(
                right: 0,
                height: 50,
                child: Container(
                  width: 40,
                  height: 42,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Colour.yellow,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          topRight: Radius.circular(15))),
                  child: Text(
                    rating,
                    style:
                        Typograph.regulerMedium.copyWith(color: Colors.white),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
