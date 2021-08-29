import 'package:flutter/material.dart';
import 'screens.dart/home_page.dart';

void main() {
  runApp(FindBestFriend());
}

class FindBestFriend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => HomePage(),
      },
    );
  }
}
