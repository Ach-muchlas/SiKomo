import 'package:flutter/material.dart';
import 'package:sikomo/material_assets/font/typography.dart';
import 'package:sikomo/material_assets/widget/product_wisata.dart';
import 'package:sikomo/view/pages/tour_details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            // display in the top screen
            Stack(
              children: [
                // backorund image on top
                Image.asset(
                  'assets/images/air_terjun_homeScreen.png',
                  fit: BoxFit.cover,
                  height: 295,
                  width: double.infinity,
                ),

                // text selamat datang
                Padding(
                  padding: const EdgeInsets.only(top: 43, left: 13),
                  child: Text(
                    'Hai \nSelamat datang di SiKomo',
                    style:
                        Typograph.regulerMedium.copyWith(color: Colors.white),
                    textAlign: TextAlign.left,
                  ),
                ),

                // text temukan keindahan pariwisata
                Padding(
                  padding: const EdgeInsets.only(top: 116, left: 14),
                  child: Text(
                    'Temukan Keindahan \nPariwisata Mojokerto',
                    style:
                        Typograph.semiBoldLarge.copyWith(color: Colors.white),
                  ),
                ),

                // textfiled untuk search
                Container(
                  width: 265,
                  height: 51,
                  margin: const EdgeInsets.only(top: 265, left: 51),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(color: Colors.grey, blurRadius: 4)
                      ]),
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      hintText: 'mau kemana?',
                      hintStyle:
                          Typograph.regulerMedium.copyWith(color: Colors.grey),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),

            // spasi
            const SizedBox(
              height: 19,
            ),

            // tampilan product
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // product 1
                ProductWisata(
                  assetImage:
                      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/29/04/2b/eyeemfiltered1451116519411.jpg?w=1200&h=-1&s=1',
                  placeName: 'Candi \nBrahu',
                  rating: '4.9',
                  price: 'Rp. 2000',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                            // Page detail candi Brahu
                            TourDetailsScreen(
                          imagebackground:
                              'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/29/04/2b/eyeemfiltered1451116519411.jpg?w=1200&h=-1&s=1',
                          title: 'Candi Brahu',
                          desciption:
                              'Candi Brahu lebih tua dibandingkan candi lain yang ada di sekitar Trowulan. Nama Brahu dihubungkan diperkirakan berasal dari kata \'Wanaru\' atau \'Warahu\', yaitu nama sebuah bangunan suci yang disebutkan di dalam prasasti tembaga \'Alasantan\' yang ditemukan kira-kira 45 meter disebelah barat Candi Brahu.',
                          location:
                              'Desa Padusan, Kecamatan Pacet, \nKabupaten Mojokerto, Jawa Timur.',
                          jam: '09.00 - 10.00',
                          fasilitas_1:
                              'Tempat Informasi candi \nParkir \nMusholla',
                          fasilitas_2: 'Gazebo \nSpot \nFotoToilet',
                          price: 'Rp 3000/orang',                          
                          onTapIconsLocation: (() {}),
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  width: 11,
                ),

                // product 2
                ProductWisata(
                  assetImage:
                      'https://assets.promediateknologi.com/crop/0x0:0x0/x/photo/2021/12/27/2584058508.jpg',
                  placeName: 'Candi \nBrahu',
                  rating: '4.9',
                  price: 'Rp. 2000',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => TourDetailsScreen(
                          imagebackground: 'https://assets.promediateknologi.com/crop/0x0:0x0/x/photo/2021/12/27/2584058508.jpg',
                          title: 'Candi Tikus',
                          desciption: 'Candi Tikus adalah sebuah peninggalan dari kerajaan yang bercorak Hindu yang terletak di Kompleks Trowulan, tepatnya di dukuh Dinuk, Desa Temon, Kecamatan Trowulan, Kabupaten Mojokerto, Jawa Timur. Nama ‘Tikus’ hanya merupakan sebutan yang digunakan masyarakat setempat. Konon, pada saat ditemukan, tempat Candi tersebut berada merupakan sarang tikus. Di sana pemandangannya sangat bagus.',
                          location: 'Jalan Raya Trowulan, Jatirejo, Temon, \nTrowulan, Mojokerto, Jawa Timur.',
                          jam: '07.00 - 16.00',
                          price: '3.000/orang',                          
                          fasilitas_1: 'Area parkir	\nPusat informasi \nToilet',
                          fasilitas_2: 'Musholla	\nRumah makan	\nTersedia tempat duduk',
                          onTapIconsLocation: () {},
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 38,
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     ProductWisata(
            //       assetImage: 'assets/images/product/candi_brahu_product.png',
            //       placeName: 'Candi \nBrahu',
            //       rating: '4.9',
            //       price: 'Rp. 2000',
            //       onTap: () {},
            //     ),
            //     const SizedBox(
            //       width: 11,
            //     ),
            //     ProductWisata(
            //         assetImage: 'assets/images/product/candi_brahu_product.png',
            //         placeName: 'Candi \nBrahu',
            //         rating: '4.9',
            //         price: 'Rp. 2000',
            //         onTap: () {}),
            //   ],
            // ),
            // const SizedBox(
            //   height: 38,
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     ProductWisata(
            //         assetImage: 'assets/images/product/candi_brahu_product.png',
            //         placeName: 'Candi \nBrahu',
            //         rating: '4.9',
            //         price: 'Rp. 2000',
            //         onTap: () {}),
            //     const SizedBox(
            //       width: 11,
            //     ),
            //     ProductWisata(
            //         assetImage: 'assets/images/product/candi_brahu_product.png',
            //         placeName: 'Candi \nBrahu',
            //         rating: '4.9',
            //         price: 'Rp. 2000',
            //         onTap: () {}),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
