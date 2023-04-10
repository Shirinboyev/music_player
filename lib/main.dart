import 'package:flutter/material.dart';
import 'package:music_player/screens/main_screen.dart';
import 'package:music_player/screens/playing.dart';
import 'package:music_player/screens/playlist.dart';
void main() {
  runApp(const MainRoute());
}
class MainRoute extends StatefulWidget {
  const MainRoute({super.key});
  @override
  State<MainRoute> createState() => _MainRouteState();
}
class _MainRouteState extends State<MainRoute> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
        elevation: 0.0,
        foregroundColor: Colors.black,
        color: Colors.white,
        titleTextStyle: TextStyle(
          color: Colors.white,
        )
      ),
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'main_screen.dart',
      routes: {
        'main_screen.dart': (context) => const MainPage(),
        '/Playing': (context) => const PlayingPage(),
        '/Playlist': (context) => const PlayListPage(),
      },
    );
  }
}
