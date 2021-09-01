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

      //Routing to shift from one page to another.
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        //ProfilePage has been given an argument to fetch datas from HomePage.
        ProfilePage.id: (context) =>
            ProfilePage(idx: ModalRoute.of(context)!.settings.arguments),
      },
    );
  }
}
