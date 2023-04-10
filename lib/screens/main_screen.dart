import 'package:flutter/material.dart';
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(children: []),
      ),
      appBar: AppBar(
        titleSpacing: 255,
        title: Icon(Icons.search_rounded),
      ),
      backgroundColor: Colors.white,
      body: Column(children: [
        Expanded(
          flex: 2,
          child: 
        ListView.builder(itemBuilder: (context, index) {
          return Image.asset('images/music.png');
        },)
        )
      ]),
    );
  }
}