import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:find_best_friend/constants.dart';
import 'package:find_best_friend/components.dart/rounded_widget.dart';

bool _hasBeenPressed = false;

class HomePage extends StatefulWidget {
  static const String id = 'homePage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 25.0,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    'Find best friend',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 38.0,
                    ),
                  ),
                  SizedBox(
                    width: 50.0,
                  ),
                  FaIcon(
                    FontAwesomeIcons.ellipsisV,
                  )
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: 380.0,
                child: TextField(
                  decoration: kTextFieldDecoration,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Rounded_widget(
                      title: 'All',
                      colour:
                          _hasBeenPressed ? Colors.black : Color(0xFFE1E4E7),
                      textColour: _hasBeenPressed ? Colors.white : Colors.black,
                      onpress: () {
                        setState(() {
                          _hasBeenPressed = !_hasBeenPressed;
                        });
                      },
                    ),
                    SizedBox(width: 8.0),
                    Rounded_widget(
                      title: 'Dogs',
                      textColour: _hasBeenPressed ? Colors.white : Colors.black,
                      colour:
                          _hasBeenPressed ? Colors.black : Color(0xFFE1E4E7),
                      onpress: () {
                        setState(() {
                          _hasBeenPressed = !_hasBeenPressed;
                        });
                      },
                    ),
                    SizedBox(width: 8.0),
                    Rounded_widget(
                      title: 'Cats',
                      textColour: _hasBeenPressed ? Colors.white : Colors.black,
                      colour:
                          _hasBeenPressed ? Colors.black : Color(0xFFE1E4E7),
                      onpress: () {
                        setState(() {
                          _hasBeenPressed = !_hasBeenPressed;
                        });
                      },
                    ),
                    SizedBox(width: 8.0),
                    Rounded_widget(
                      title: 'Birds',
                      textColour: _hasBeenPressed ? Colors.white : Colors.black,
                      colour:
                          _hasBeenPressed ? Colors.black : Color(0xFFE1E4E7),
                      onpress: () {
                        setState(() {
                          _hasBeenPressed = !_hasBeenPressed;
                        });
                      },
                    ),
                    SizedBox(width: 8.0),
                    Rounded_widget(
                      title: 'Rabbits',
                      textColour: _hasBeenPressed ? Colors.white : Colors.black,
                      colour:
                          _hasBeenPressed ? Colors.black : Color(0xFFE1E4E7),
                      onpress: () {
                        setState(() {
                          _hasBeenPressed = !_hasBeenPressed;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
