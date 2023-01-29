import 'dart:convert';

// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:sikomo/material_assets/model/sikomo.dart';
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
  List<Sikomo> dataSikomo = [];

  // list untuk display
  late List<Sikomo> displaySikomo = List.from(dataSikomo);

  // loading circular
  bool isLoading = true;

  // controller search
  TextEditingController searchData = TextEditingController();

  Future getDataSikomo() async {
    final response =
        await http.get(Uri.parse('http://192.168.1.87/SIKOMO/read.php'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as List<dynamic>;
      final transfrom = data.map((e) {
        return Sikomo(
            id: e['id'],
            nama: e['nama'],
            deskripsi: e['deskripsi'],
            rating: e['rating'],
            lokasi: e['lokasi'],
            jam: e['jam'],
            harga: e['harga'],
            fasilitas_1: e['fasilitas_1'],
            fasilitas_2: e['fasilitas_2'],
            image: e['image']);
      }).toList();
      setState(() {
        dataSikomo = transfrom;
        isLoading = false;
      });
      print('fetch data berhasil');
    }
  }

  void searchApi(String data) {
    setState(() {
      displaySikomo = dataSikomo
          .where(
              (value) => value.nama.toLowerCase().contains(data.toLowerCase()))
          .toList();
    });
  }

  // Future getData() async {
  //   try {
  //     final response =
  //         await http.get(Uri.parse('http://192.168.1.87/SIKOMO/read.php'));

  //     if (response.statusCode == 200) {
  //       final data = jsonDecode(response.body);
  //       setState(() {
  //         dataSikomo = data;
  //         isLoading = false;
  //       });
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  @override
  void initState() {
    super.initState();
    // getData();
    // getData();
    getDataSikomo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          // ignore: deprecated_member_use
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
                  onChanged: ((value) => searchApi(value)),
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
                      displaySikomo.length,
                      (index) => ProductWisata(
                        imageUrl: displaySikomo[index].image,
                        name: displaySikomo[index].nama,
                        rating: displaySikomo[index].rating,
                        price: displaySikomo[index].harga,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) => TourDetailsScreen(
                                imagebackground: displaySikomo[index].image,
                                title: displaySikomo[index].nama,
                                rating: displaySikomo[index].rating,
                                desciption: displaySikomo[index].deskripsi,
                                location: displaySikomo[index].lokasi,
                                jam: displaySikomo[index].jam,
                                price: displaySikomo[index].harga,
                                fasilitas_1: displaySikomo[index].fasilitas_1,
                                fasilitas_2: displaySikomo[index].fasilitas_2,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
        ],
      )),
    );
  }
}
