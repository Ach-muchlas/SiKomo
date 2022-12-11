class OnboardingModel {
  String imageBackground;
  String imageLocation;
  String titleContent;
  String subtittleContent;

  OnboardingModel({
    required this.imageBackground,
    required this.imageLocation,
    required this.titleContent,
    required this.subtittleContent,
  });
}

List<OnboardingModel> model = [
  // data pertama
  OnboardingModel(
    imageBackground: 'assets/images/gunung_penanggungan.png',
    imageLocation: 'Gunung \nPenanggungan',
    titleContent: 'Berwisata di Mojokerto \ndengan penuh kesan',
    subtittleContent: 'Dapatkan pengalaman pariwisata \ntanpa ribet bersama Mk',
  ),
  //data kedua
  OnboardingModel(
    imageBackground: 'assets/images/air_terjun_dlundung.png',
    imageLocation: 'Air Terjun \nDlundung',
    titleContent: 'Kemudahan Informasi',
    subtittleContent: 'Dapatkan informasi seputar \nwisata di daerah Mojokerto',
  ),
  // data ketiga
  OnboardingModel(
      imageBackground: 'assets/images/candi_brahu.png',
      imageLocation: 'Candi \nBrahu',
      titleContent: 'Kemudahan dalam \nmengenali wisata',
      subtittleContent:
          'Memberikan kemudahan dalam mengenali \nwisata di Mojokerto')
];
