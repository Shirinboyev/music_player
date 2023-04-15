import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:music_player/style/color.dart';
import 'package:music_player/functions/main_music.dart';
import './constant.dart';

class PlayingPage extends StatefulWidget {
  const PlayingPage({super.key});

  @override
  State<PlayingPage> createState() => _PlayingPageState();
}

class _PlayingPageState extends State<PlayingPage> {
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.white,
        title: const Center(
          child: SizedBox(
            width: 210,
            child: Text(
              kTitle,
              style: TextStyle(color: black, fontSize: 30),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              InkWell(
                onTap: () {},
                child: CarouselSlider(
                  items: imageLIst
                      .map(
                        (item) =>
                           Padding(
                             padding: const EdgeInsets.all(45),
                             child: ClipRRect(
                                       borderRadius: const BorderRadius.all(Radius.circular(20)),
                                       child: Image.asset(
                                         item['image_path'],
                                         fit: BoxFit.cover,
                                         width: double.infinity,
                                         height: 200,
                                         scale: 4,
                                       ),
                                     ),
                           ), 
                   // Image.asset(
                        //   item['image_path'],
                        //   fit: BoxFit.cover,
                        //   width: double.infinity,
                        )
                      // )
                      .toList(),
                  options: CarouselOptions(
                    scrollPhysics: const BouncingScrollPhysics(),
                    autoPlay: false,
                    enableInfiniteScroll: true,
                    aspectRatio: 1,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      setState(
                        () {
                          currentIndex = index;
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          )
          //   Expanded(
          //     flex: 2,
          //     child: ListView(
          //       scrollDirection: Axis.horizontal,
          //       children: [
          //         mainFunction('', '', 'images/osman.png', size: 245),
          //         mainFunction('', '', 'images/sardor.png', size: 245),
          //         mainFunction('', '', 'images/bahrom.png', size: 245),
          //       ],
          //     ),
          //   ),
          //   Expanded(
          //     flex: 2,
          //     child: ListView(
          //       children: [
          //         Image.asset('images/sardor.png'),
          //       ],
          //     ),
          //   )
        ],
      ),
    );
  }
}
