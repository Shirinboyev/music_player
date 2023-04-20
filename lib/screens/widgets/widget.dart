import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../constant.dart';

IconButton playingBack = IconButton(
  onPressed: () {},
  icon: Icon(Icons.arrow_back),
);

// class Carousel extends StatefulWidget {
//   const Carousel({super.key});
//   Widget set() {
//     return Stack(
//       children: [
//         InkWell(
//           onTap: () {},
//           child: CarouselSlider(
//             items: imageLIst
//                 .map(
//                   (item) => Padding(
//                     padding: const EdgeInsets.all(45),
//                     child: ClipRRect(
//                       borderRadius: const BorderRadius.all(
//                         Radius.circular(20),
//                       ),
//                       child: Image.asset(
//                         item['image_path'],
//                         fit: BoxFit.cover,
//                         width: double.infinity,
//                         height: 200,
//                         scale: 4,
//                       ),
//                     ),
//                   ),
//                 )
//                 .toList(),
//             options: CarouselOptions(
//               scrollPhysics: const BouncingScrollPhysics(),
//               autoPlay: false,
//               enableInfiniteScroll: true,
//               aspectRatio: 1,
//               viewportFraction: 1,
//               onPageChanged: (index, reason) {
//                 setState(
//                   () {
//                     currentIndex = index;
//                   },
//                 );
//               },
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   @override
//   State<Carousel> createState() => _CarouselState();
// }

// class _CarouselState extends State<Carousel> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
