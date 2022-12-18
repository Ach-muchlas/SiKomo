import 'package:flutter/material.dart';
import 'package:sikomo/material_assets/color/colors.dart';
import 'package:sikomo/material_assets/font/typography.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class TourDetailsScreen extends StatelessWidget {
  const TourDetailsScreen(
      {super.key,
      required this.imagebackground,
      required this.title,
      required this.desciption,
      required this.location,
      required this.jam,
      required this.price,
      this.onTapIconsLocation,
      required this.fasilitas_1,
      required this.fasilitas_2});

  final String imagebackground;
  final String title;
  final String desciption;
  final String location;
  final String jam;
  final String fasilitas_1;
  final String fasilitas_2;
  final String price;
  final Function()? onTapIconsLocation;

  @override
  Widget build(BuildContext context) {
    const double _userRating = 3.0;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                // image background
                Container(
                  height: MediaQuery.of(context).size.height / 2.5,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 5,
                          color: Color.fromARGB(255, 223, 211, 211))
                    ],
                    // image: DecorationImage(
                    //     image:
                    //     // NetworkImage(
                    //     //     'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/29/04/2b/eyeemfiltered1451116519411.jpg?w=1200&h=-1&s=1'
                    //     //     ),
                    //     fit: BoxFit.fill,
                    //     opacity: 10)
                  ),
                  child: Image.network(
                    imagebackground,
                    fit: BoxFit.fill,
                  ),
                ),

                // background icons back
                Container(
                  margin: const EdgeInsets.only(left: 14, top: 14),
                  padding: const EdgeInsets.only(left: 5),
                  height: 35,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colour.abuAbu,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4,
                          color: Colors.grey,
                        )
                      ]),

                  // icons arrow back
                  child: IconButton(
                    onPressed: () {
                      // screen switching function
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                ),

                // background icons location
                Container(
                  margin: const EdgeInsets.only(left: 340, top: 14),
                  padding: const EdgeInsets.only(right: 2, left: 2),
                  height: 35,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colour.abuAbu,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 4,
                        color: Colors.grey,
                      )
                    ],
                  ),

                  // icons location
                  child: IconButton(
                    onPressed: () {
                      // maps function on tap
                      onTapIconsLocation;
                    },
                    icon: const Icon(
                      Icons.location_on,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),

            /* spasi antar widget background image 
            dengan content (informasi wisata)*/
            const SizedBox(
              height: 30,
            ),

            // tour data information
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15),              
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // title of content
                  Text(title,                  
                      style: Typograph.semiBoldLarge
                          .copyWith(color: Colors.black)),

                  // spasi antara title dengan rating
                  const SizedBox(height: 10),

                  // Rating star
                  RatingBarIndicator(
                    rating: _userRating,
                    itemBuilder: (context, index) {
                      return const Icon(
                        Icons.star,
                        color: Colors.amber,
                      );
                    },
                    itemCount: 6,
                    itemSize: 25.0,
                    unratedColor: Colors.amber.withAlpha(50),
                  ),

                  const SizedBox(height: 10),

                  // description of content
                  // tittle dari sub content
                  Text(
                    'Description',
                    style:
                        Typograph.semiBoldSmall.copyWith(color: Colors.black),
                  ),

                  // spasi widget text descripsi dan content
                  const SizedBox(
                    height: 8,
                  ),

                  // deskripsi dari wisata
                  Text(
                    desciption,
                    // 'Candi Brahu merupakan salah satu candi yang terletakdi dalam kawasan situs arkeologi Trowulan, bekas ibu kota Majapahit.'
                    textAlign: TextAlign.justify,
                    style: Typograph.regulerSmall.copyWith(color: Colors.black),
                  ),

                  // spasi
                  const SizedBox(
                    height: 24,
                  ),

                  //  informasi lokasi wisata
                  Row(
                    children: [
                      // image map (peta)
                      Image.asset('assets/images/map.png'),

                      // spasi
                      const SizedBox(
                        width: 20,
                      ),

                      // text location
                      Text(
                        location,
                        textAlign: TextAlign.left,
                        style: Typograph.regulerSmall
                            .copyWith(color: Colors.black),
                      ),
                    ],
                  ),

                  // spasi  of content
                  const SizedBox(
                    height: 16,
                  ),

                  // informasi jam operasional
                  Row(
                    children: [
                      // image jam (waktu operasi)
                      Image.asset(
                        'assets/images/jam.png',
                        width: 34,
                        height: 34,
                      ),

                      const SizedBox(
                        width: 20,
                      ),
                      // jam operasional wisata
                      Text(
                        jam,
                        style: Typograph.regulerSmall
                            .copyWith(color: Colors.black),
                      )
                    ],
                  ),

                  // title dari sub content
                  Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 10),
                    child: Text(
                      'Fasilitas',
                      style:
                          Typograph.semiBoldSmall.copyWith(color: Colors.black),
                    ),
                  ),

                  // fasilitas dari wisata
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // fasilitas dari wisata
                      Text(
                        fasilitas_1,
                        // 'Tempat Informasi candi \nParkir \nMusholla',
                        style: Typograph.regulerSmall
                            .copyWith(color: Colors.black),
                      ),

                      // spasi
                      const SizedBox(
                        width: 54,
                      ),

                      // fasilitas dari wisata
                      Text(
                        fasilitas_2,
                        // 'Gazebo \nSpot \nFotoToilet',
                        style: Typograph.regulerSmall
                            .copyWith(color: Colors.black),
                      )
                    ],
                  ),

                  // harga dari wisata
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    child: Text(
                      price,
                      // 'Rp 3000/orang',
                      style: Typograph.semiBoldMedium
                          .copyWith(color: Colors.black),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
