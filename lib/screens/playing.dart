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
  double _currentSliderValue = 0;
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
                child: Column(
                  children: [
                    CarouselSlider(
                      items: imageLIst
                          .map(
                            (item) => Padding(
                              padding: const EdgeInsets.all(45),
                              child: ClipRRect(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                child: Image.asset(
                                  item['image_path'],
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: 200,
                                  scale: 4,
                                ),
                              ),
                            ),
                          )
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
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 110),
                          child: Column(
                            children: const [
                              Text(
                                sami,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                'image_path',
                                style:
                                    TextStyle(fontSize: 20, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite_outline),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Slider(
            value: _currentSliderValue,
            max: 100,
            divisions: 100,
            label: _currentSliderValue.round().toString(),
            onChanged: (value) {
              setState(() {
                _currentSliderValue = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
