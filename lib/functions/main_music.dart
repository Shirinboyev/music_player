import 'package:flutter/material.dart';
import '../style/color.dart';

double rating = 0.0;
double newRating = 0.0;
Widget mainFunction(String musicName, String artist, String img, {double? size}) {
  return TextButton(
    style: ElevatedButton.styleFrom(shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(20))),
    onPressed: () {},
    child: Column(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          child: Image.asset(img, width: size),
        ),
        Text(musicName, style: const TextStyle(fontSize: 20, color: black)),
        Text(artist, style: const TextStyle(color: black)),
      ],
    ),
  );
}
