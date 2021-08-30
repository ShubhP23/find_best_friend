import 'package:flutter/material.dart';
import 'screens.dart/home_page.dart';
import 'screens.dart/profile_page.dart';

void main() {
  runApp(FindBestFriend());
}

class FindBestFriend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: ProfilePage.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        ProfilePage.id: (context) => ProfilePage(),
      },
    );
  }
}
