import 'package:flutter/material.dart';
import 'package:skynexui_responsive_stylesheet/skynexui_responsive_stylesheet.dart';
import 'package:with_flutter_sample/chat-app-screen/chat-app-screen.dart';
import 'package:with_flutter_sample/flutter-basic/flutter-basic.dart';
import 'package:with_flutter_sample/holy-grail-layout/holy-grail-layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'sans-serif',
        primarySwatch: Colors.orange,
      ),
      routes: {
        '/': (context) => const HomeScreen(),
        '/flutter-basic': (context) =>
            const FlutterBasic(title: 'Flutter Demo Home Page'),
        '/holy-grail-layout': (context) => const HolyGrailLayoutScreen(),
        '/chat-app': (context) => const ChatAppScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const links = [
      {"name": 'Flutter Basic Screen', "href": "/flutter-basic"},
      {"name": 'Holy Grail Layout Screen', "href": "/holy-grail-layout"},
      {"name": 'Chat App Screen', "href": "/chat-app"},
    ];
    return Scaffold(
      body: Center(
        child: GridItem(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to Skynex UI Responsive Stylesheet!',
              style: TextStyle(fontSize: 24),
            ),
            ...links.map((link) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: Text(link!["name"] as String),
                  onPressed: () =>
                      Navigator.pushNamed(context, link["href"] as String),
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
