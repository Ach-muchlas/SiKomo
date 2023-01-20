import 'dart:convert';

// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:sikomo/view/pages/tour_details_screen.dart';
import '../../material_assets/font/typography.dart';
import '../../material_assets/widget/product_wisata.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController search = TextEditingController();

  // data list api
  List dataSikomo = [];
  // loading circular
  bool isLoading = true;

  Future getData() async {
    try {
      final response =
          await http.get(Uri.parse('http://192.168.218.183/SIKOMO/read.php'));

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        setState(() {
          dataSikomo = data;
          isLoading = false;
        });
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();    
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // ignore: deprecated_member_use
        child: 
            ListView(
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
                    style: Typograph.regulerMedium.copyWith(color: Colors.white),
                    textAlign: TextAlign.left,
                  ),
                ),

                // text temukan keindahan pariwisata
                Padding(
                  padding: const EdgeInsets.only(top: 116, left: 14),
                  child: Text(
                    'Temukan Keindahan \nPariwisata Mojokerto',
                    style: Typograph.semiBoldLarge.copyWith(color: Colors.white),
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
                    onChanged: (value) {
                      value = value.toLowerCase();
                      setState(() {});
                    },
                    controller: search,
                    textAlign: TextAlign.left,
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
            isLoading
                ? const Center(child: CircularProgressIndicator())
                : SizedBox(
                    height: MediaQuery.of(context).size.height / 1.8,
                    child: GridView.count(
                      crossAxisCount: 2,
                      scrollDirection: Axis.vertical,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 11,
                      padding: const EdgeInsets.all(5.0),
                      children: List.generate(
                        dataSikomo.length,
                        (index) => ProductWisata(
                          imageUrl: dataSikomo[index]['image'],
                          name: dataSikomo[index]['nama'],
                          rating: dataSikomo[index]['rating'],
                          price: dataSikomo[index]['harga'],
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) => TourDetailsScreen(
                                  imagebackground: dataSikomo[index]['image'],
                                  title: dataSikomo[index]['nama'],
                                  rating: dataSikomo[index]['rating'],
                                  desciption: dataSikomo[index]['deskripsi'],
                                  location: dataSikomo[index]['lokasi'],
                                  jam: dataSikomo[index]['jam'],
                                  price: dataSikomo[index]['harga'],
                                  fasilitas_1: dataSikomo[index]['fasilitas_1'],
                                  fasilitas_2: dataSikomo[index]['fasilitas_2'],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
          ],
        )
      ),
    );
  }
}
