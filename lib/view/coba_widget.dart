// import 'package:flutter/material.dart';
// import 'package:sikomo/material_assets/widget/product_wisata.dart';
// // import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// // import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// class Coba extends StatelessWidget {
//   const Coba({super.key});

//   @override
//   Widget build(BuildContext context) {
//     List<Widget> gridviewvalue = [
//       ProductWisata(
//           assetImage:
//               'https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.mytrip.co.id%2Feditor%2Fpast%2FCoban%2520Canggu.jpeg&imgrefurl=https%3A%2F%2Fwww.mytrip.co.id%2Farticle%2Ftebing-air-terjun-coban-canggu-memang-keren&tbnid=UOEOQb63L-PO9M&vet=12ahUKEwjQurD7g_z7AhWY4nMBHVSGAqYQMygCegUIARDFAQ..i&docid=cV3kWpluVfNYmM&w=866&h=1155&q=coban%20cangu&ved=2ahUKEwjQurD7g_z7AhWY4nMBHVSGAqYQMygCegUIARDFAQ',
//           placeName: 'coban canggu',
//           rating: '3.9',
//           price: '3.000'),
//       ProductWisata(
//           assetImage:
//               'https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.mytrip.co.id%2Feditor%2Fpast%2FCoban%2520Canggu.jpeg&imgrefurl=https%3A%2F%2Fwww.mytrip.co.id%2Farticle%2Ftebing-air-terjun-coban-canggu-memang-keren&tbnid=UOEOQb63L-PO9M&vet=12ahUKEwjQurD7g_z7AhWY4nMBHVSGAqYQMygCegUIARDFAQ..i&docid=cV3kWpluVfNYmM&w=866&h=1155&q=coban%20cangu&ved=2ahUKEwjQurD7g_z7AhWY4nMBHVSGAqYQMygCegUIARDFAQ',
//           placeName: 'coban canggu',
//           rating: '3.9',
//           price: '3.000')
//     ];
//     return Scaffold(
//       body: ListView(
//         children: [
//           GridView.count(
//               crossAxisCount: 2,
//               children: List.generate(gridviewvalue.length, (index) {
//                 return Container();
//               })),
//         ],
//       ),
//     );
//   }
// }
// class coba extends StatefulWidget {
//   const coba({super.key});

//   @override
//   State<coba> createState() => _cobaState();
// }

// class _cobaState extends State<coba> {
//   final double _userRating = 4.0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Image.network(
//             'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/29/04/2b/eyeemfiltered1451116519411.jpg?w=1200&h=-1&s=1'),
//       ),
//       // body: ListView(
//       //   children: [
//       //     RatingBarIndicator(
//       //       rating: _userRating,
//       //       itemBuilder: (context, index) {
//       //         return Icon(
//       //           Icons.star,
//       //           color: Colors.amber,
//       //         );
//       //       },
//       //       itemCount: 6,
//       //       itemSize: 50.0,
//       //       unratedColor: Colors.amber.withAlpha(50),
//       //     )

//       //     // child: Image.network(
//       //     // 'https:dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/29/04/2b/eyeemfiltered1451116519411.jpg?w=1200&h=-1&s=1'),
//       //     // child: Column(
//       //     //   crossAxisAlignment: CrossAxisAlignment.center,
//       //     //   mainAxisAlignment: MainAxisAlignment.center,
//       //     //   children: [
//       //     //     RatingBar.builder(
//       //     //       initialRating: 0,
//       //     //       minRating: 1,
//       //     //       direction: Axis.horizontal,
//       //     //       allowHalfRating: true,
//       //     //       itemCount: 6,
//       //     //       itemPadding: EdgeInsets.symmetric(horizontal: 3.0),
//       //     //       itemBuilder: (context, _) => Icon(
//       //     //         Icons.star,
//       //     //         color: Colors.amber,
//       //     //       ),
//       //     //       onRatingUpdate: (rating) {
//       //     //         print(rating);
//       //     //       },
//       //     //     ),
//       //     //   ],
//       //     // ),
//       //   ],
//       // ),
//     );
//   }
// }
