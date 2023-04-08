import 'package:flutter/material.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Scaffold(
              body: Center(
                child: Text('Home'),
              ),
            ),
        '/playlist': (context) => const Scaffold(
              body: Center(
                child: Text('Second'),
              ),
            ),
        '/playing': (context) => const Scaffold(
              body: Center(
                child: Text('Third'),
              ),
            ),
      },
    );
  }
}
