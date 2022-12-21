import 'package:flutter/material.dart';
import 'package:sikomo/material_assets/font/typography.dart';
import 'package:sikomo/material_assets/widget/product_wisata.dart';
import 'package:sikomo/view/pages/tour_details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProductWisata> modelWisata = [
      // Air terjun Coban Canggu
      ProductWisata(
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0Tfk1KQmQdJmCtTd1g8tVCKM_OduCOGlUvQ&usqp=CAU',
        name: 'Coban \nCanggu',
        rating: '4.9',
        price: 'Rp. 7000/orang',
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) => TourDetailsScreen(
                imagebackground:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0Tfk1KQmQdJmCtTd1g8tVCKM_OduCOGlUvQ&usqp=CAU',
                title: 'Coban Canggu',
                desciption:
                    'Air terjun Coban Canggu memiliki ketinggian sekitar 80 meter dengan tebing berupa bebatuan yang kian mempercantik Coban Canggu ini. Ada sekitar 200 anak tangga yang harus dilaui oleh para wisatawan untuk menuju lokasi air terjun. Selama perjalanan, kalian akan disuguhi pemandangan alam pegunungan dan pesawahan yang sangat memanjakan mata yang melihat.',
                location:
                    'Desa Padusan, Kecamatan Pacet, \nKabupaten Mojokerto, Jawa Timur.',
                jam: '09.00 - 05.00',
                price: 'Rp. 7000/orang',
                fasilitas_1: 'Rumah makan	\nKamar mandi	\nParkiran \nMusholla',
                fasilitas_2: 'Taman bermain anak	\nGazebo	\nPenginapan',
                onTapIconsLocation: () {},
              ),
            ),
          );
        },
      ),

      // air terjun dlundung
      ProductWisata(
        imageUrl:
            'https://asset.kompas.com/crops/u0Nl58WpNJp989z2U8Z6Wv_HH5w=/3x10:898x607/750x500/data/photo/2022/05/28/62920ec6ecb1d.jpg',
        name: 'Dlundung',
        rating: '5.0',
        price: 'Rp. 10000/orang',
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) => TourDetailsScreen(
                imagebackground:
                    'https://asset.kompas.com/crops/u0Nl58WpNJp989z2U8Z6Wv_HH5w=/3x10:898x607/750x500/data/photo/2022/05/28/62920ec6ecb1d.jpg',
                title: 'Dlundung',
                desciption:
                    'Terletak di Gunung Penanggungan dengan hamparan pesona keindahan dari mulai jalur pertama sampai ke lokasi air terjun. Memiliki ketinggian sekitar 50 meter dengan air yang sangat jernih.',
                location:
                    'Desa Kemloko, Kecamatan, Trawas, \nKabupaten Mojokerto, Jawa Timur.',
                jam: '07.30 - 16.00 / Sabtu 24 Jam',
                price: 'Rp. 10000/orang \tRp. 75000/anak',
                fasilitas_1:
                    'Camping ground \nPenyewaan tenda	\nMusholla \nToilet umum ',
                fasilitas_2:
                    'Warung setempat	\nTaman kelinci	\nPetugas kebersihan',
                onTapIconsLocation: () {},
              ),
            ),
          );
        },
      ),

      // air terjun grenjengan
      ProductWisata(
        imageUrl:
            'https://asset.kompas.com/crops/VZNapCEAYDOq_UQaI42YOFvVCAM=/0x0:780x520/750x500/data/photo/2019/06/24/780645195.jpg',
        name: 'Grenjengan',
        rating: '5.0',
        price: 'Rp. 8000/orang',
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) => TourDetailsScreen(
                imagebackground:
                    'https://asset.kompas.com/crops/VZNapCEAYDOq_UQaI42YOFvVCAM=/0x0:780x520/750x500/data/photo/2019/06/24/780645195.jpg',
                title: 'Grenjengan',
                desciption:
                    'Air Terjun Grenjengan berasal dari sumber mata air Gunung Welirang, menjadikan air akan selalu jernih meski sedang diguyur hujan deras. Pengunjung bisa merasakan sensasi segarnya air yang mengucur tidak begitu deras, sekalian mandi-mandi di sebuah kolam alami di bawahnya. Kolam ini memiliki kedalaman tidak lebih dari 1 m, sementara air terjun sendiri memiliki ketinggian sekitar 40 m.',
                location:
                    'Pacet, Desa Padusan, Kecamatan Pacet, \nKabupaten Mojokerto, Jawa Timur.',
                jam: '08.00 – 16.00 / Weekend 07.00 – 16.00',
                price: 'Rp. 8000/orang',
                fasilitas_1: 'Gazebo \nKursi kayu \nSpot foto',
                fasilitas_2: '',
                onTapIconsLocation: () {},
              ),
            ),
          );
        },
      ),

      // air terjun watu lumpang
      ProductWisata(
        imageUrl:
            'https://tahuraradensoerjo.or.id/images/owa/owa-watu-lumpang/img-01.jpg',
        name: 'Air Terjun \nWatu Lumpang',
        rating: '5.0',
        price: 'Rp. 10000',
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) => TourDetailsScreen(
                imagebackground:
                    'https://tahuraradensoerjo.or.id/images/owa/owa-watu-lumpang/img-01.jpg',
                title: 'Air Terjun Watu Lumpang',
                desciption:
                    'Air Terjun Watu Lumpang Merupakan air terjun yang cukup tinggi di Obyek Wisata Alah Taman Hutan Raya Raden Soerjo, yang secara administratif berada di Desa Sensi Kecamatan Pacet Kabupaten Mojokerto dan berada pada posisi 7° 43’ 41,967” – 7° 43’ 51,970 LS dan 112° 31’ 29,520” – 112° 31’ 42,353” BT. Lokasi Air Terjun ada di ketinggian 1.750 mdpl.Air terjun Watu Lumpang memiliki ketinggian ± 30 meter dan ± 20 meter dengan posisi kedua air terjun saling berhadapan berada di sebelah selatan dan utara tebing.',
                location: 'Hutan, Pacet, \nKabupaten Mojokerto, Jawa Timur.',
                jam: '08.00 – 16.00 / Weekend 07.00 – 16.00',
                price: 'Rp. 10000/orang',
                fasilitas_1: 'Parkiran \nRumah penginapan \nToilet umum',
                fasilitas_2: 'Musholla \nToilet umum \nArea parkir',
                onTapIconsLocation: () {},
              ),
            ),
          );
        },
      ),

      //air terjun Surodadu
      ProductWisata(
        imageUrl:
            'https://jadwaltravel.com/wp-content/uploads/2019/11/Air-Terjun-Surodadu-Pacet.jpg',
        name: 'Air Terjun \nSurodadu',
        rating: '5.0',
        price: 'Rp. 5000',
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) => TourDetailsScreen(
                imagebackground:
                    'https://jadwaltravel.com/wp-content/uploads/2019/11/Air-Terjun-Surodadu-Pacet.jpg',
                title: 'Air Terjun Surodadu',
                desciption:
                    'Air Terjun Surodadu memiliki keistimewaan tersendiri, di antaranya terdapat 2 air terjun yakni air terjun mini dan air terjun besar. Selain itu air terjun besar letaknya juga tersembunyi di balik hutan bambu di Dusun Mligi serta aliran airnya berasal dari sebuah sumber mata air Gunung Welirang. Alhasil air akan selalu tampak jernih meskipun hujan deras mengguyur.',
                location:
                    'Dusun Mligi, Desa Claket, Pacet, \nHutan, Pacet, Mojokerto, Jawa Timur.',
                jam: '08.00 – 16.00',
                price: 'Rp. 5000/orang',
                fasilitas_1: 'Gazebo \nToilet umum \nArea parkir',
                fasilitas_2: 'Musholla \nCamping ground \nWarung',
                onTapIconsLocation: () {},
              ),
            ),
          );
        },
      ),

      // Gunung Penanggungan
      ProductWisata(
        imageUrl:
            'https://statik.tempo.co/data/2013/07/17/id_202769/202769_620.jpg',
        name: 'Gunung \nPenanggungan',
        rating: '5.0',
        price: 'Rp. 15000',
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) => TourDetailsScreen(
                imagebackground:
                    'https://statik.tempo.co/data/2013/07/17/id_202769/202769_620.jpg',
                title: 'Gunung Penanggungan',
                desciption:
                    '''Gunung Penanggungan merupakan gunung kecil yang berada pada satu kluster dengan Gunung Arjuno dan Gunung Welirang yang jauh lebih besar. Meskipun kecil, gunung ini memiliki keunikan dari sisi kesejarahan, karena di sekujur permukaannya, mulai dari kaki sampai mendekati puncak, dipenuhi banyak situs kepurbakalaan yang dibangun pada periode Hindu-Buddha dalam sejarah Indonesia.''',
                location:
                    'Kecamatan Trawas, \nKabupaten Mojokerto, Jawa Timur.',
                jam: '24 Jam',
                price: 'Rp. 15000/orang',
                fasilitas_1: 'Area parkir \nPos registrasi',
                fasilitas_2: 'Pos peristirahatan	\nWarung setempat',
                onTapIconsLocation: () {},
              ),
            ),
          );
        },
      ),

      // Candi Bajang Ratu
      ProductWisata(
        imageUrl:
            'https://idsejarah.net/wp-content/uploads/2016/09/candi-bajang-ratu.jpg',
        name: 'Candi \nBajang Ratu',
        rating: '5.0',
        price: 'Rp. 3000',
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) => TourDetailsScreen(
                imagebackground:
                    'https://idsejarah.net/wp-content/uploads/2016/09/candi-bajang-ratu.jpg',
                title: 'Candi Bajang Ratu',
                desciption:
                    'Merupakan salah satu icon wisata di kota Mojokerto, candi kuno ini menjadi salah satu peninggalan kerajaan Majapahit. Memiliki akses jalan yang baik dan berbagai fasilitas yang memadai.',
                location:
                    'Jalan Candi Tikus No. 09, Trowulan, \nTemon, Mojokerto, Jawa Timur.',
                jam: '08.00 - 17.00',
                price: 'Rp. 3000/orang',
                fasilitas_1: 'Area parkir \nWarung \nPusat informasi \nToilet',
                fasilitas_2: 'Musholla \nPusat oleh-oleh	\nTaman ',
                onTapIconsLocation: () {},
              ),
            ),
          );
        },
      ),

      // Candi Brahu
      ProductWisata(
        imageUrl:
            'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/29/04/2b/eyeemfiltered1451116519411.jpg?w=1200&h=-1&s=1',
        name: 'Candi \nBrahu',
        rating: '5.0',
        price: 'Rp. 3000',
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) => TourDetailsScreen(
                imagebackground:
                    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/29/04/2b/eyeemfiltered1451116519411.jpg?w=1200&h=-1&s=1',
                title: 'Candi Brahu',
                desciption:
                    'Candi Brahu lebih tua dibandingkan candi lain yang ada di sekitar Trowulan. Nama Brahu dihubungkan diperkirakan berasal dari kata \'Wanaru\' atau \'Warahu\', yaitu nama sebuah bangunan suci yang disebutkan di dalam prasasti tembaga \'Alasantan\' yang ditemukan kira-kira 45 meter disebelah barat Candi Brahu.',
                location: 'Sawah, Bejijong, Trowulan, \nMojokerto, Jawa Timur.',
                jam: '06.00 - 18.00',
                price: 'Rp. 3000/orang',
                fasilitas_1:
                    'Area parkir \nPusat informasi dan sejarah \nToilet umum',
                fasilitas_2: 'Spot foto	\nGazebo \nMusholla',
                onTapIconsLocation: () {},
              ),
            ),
          );
        },
      ),

      // Candi Tikus
      ProductWisata(
        imageUrl:
            'https://assets.promediateknologi.com/crop/0x0:0x0/x/photo/2021/12/27/2584058508.jpg',
        name: 'Candi \nTikus',
        rating: '4.9',
        price: 'Rp. 3000',
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) => TourDetailsScreen(
                imagebackground:
                    'https://assets.promediateknologi.com/crop/0x0:0x0/x/photo/2021/12/27/2584058508.jpg',
                title: 'Candi Tikus',
                desciption:
                    'Candi Tikus adalah sebuah peninggalan dari kerajaan yang bercorak Hindu yang terletak di Kompleks Trowulan, tepatnya di dukuh Dinuk, Desa Temon, Kecamatan Trowulan, Kabupaten Mojokerto, Jawa Timur. Nama ‘Tikus’ hanya merupakan sebutan yang digunakan masyarakat setempat. Konon, pada saat ditemukan, tempat Candi tersebut berada merupakan sarang tikus. Di sana pemandangannya sangat bagus.',
                location:
                    'Jalan Raya Trowulan, Jatirejo, Temon, \nTrowulan, Mojokerto, Jawa Timur.',
                jam: '06.00 - 18.00',
                price: 'Rp. 3000/orang',
                fasilitas_1: 'Area parkir \nPusat informasi \nToilet',
                fasilitas_2: 'Rumah makan	\nTersedia tempat duduk \nMusholla',
                onTapIconsLocation: () {},
              ),
            ),
          );
        },
      ),
    ];

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
                    ],
                  ),
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
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.8,
              child: GridView.count(
                crossAxisCount: 2,
                scrollDirection: Axis.vertical,
                mainAxisSpacing: 10,
                crossAxisSpacing: 11,
                padding: const EdgeInsets.all(5.0),
                children: List.generate(
                  modelWisata.length,
                  (index) => ProductWisata(
                    imageUrl: modelWisata[index].imageUrl,
                    name: modelWisata[index].name,
                    rating: modelWisata[index].rating,
                    price: modelWisata[index].price,
                    onTap: modelWisata[index].onTap,
                  ),
                ),
              ),
            ),          
          ],
        ),
      ),
    );
  }
}