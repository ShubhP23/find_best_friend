import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:find_best_friend/constants.dart';
import 'package:find_best_friend/components.dart/rounded_widget.dart';

enum _roundWidget { all, dogs, cats, birds, rabbits }

class HomePage extends StatefulWidget {
  static const String id = 'homePage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _roundWidget? clicked;
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
                      colour: clicked == _roundWidget.all
                          ? Colors.black
                          : Color(0xFFE1E4E7),
                      textColour: clicked == _roundWidget.all
                          ? Colors.white
                          : Colors.black,
                      onpress: () {
                        setState(() {
                          clicked = _roundWidget.all;
                        });
                      },
                    ),
                    SizedBox(width: 8.0),
                    Rounded_widget(
                      title: 'Dogs',
                      colour: clicked == _roundWidget.dogs
                          ? Colors.black
                          : Color(0xFFE1E4E7),
                      textColour: clicked == _roundWidget.dogs
                          ? Colors.white
                          : Colors.black,
                      onpress: () {
                        setState(() {
                          clicked = _roundWidget.dogs;
                        });
                      },
                    ),
                    SizedBox(width: 8.0),
                    Rounded_widget(
                      title: 'Cats',
                      colour: clicked == _roundWidget.cats
                          ? Colors.black
                          : Color(0xFFE1E4E7),
                      textColour: clicked == _roundWidget.cats
                          ? Colors.white
                          : Colors.black,
                      onpress: () {
                        setState(() {
                          clicked = _roundWidget.cats;
                        });
                      },
                    ),
                    SizedBox(width: 8.0),
                    Rounded_widget(
                      title: 'Birds',
                      colour: clicked == _roundWidget.birds
                          ? Colors.black
                          : Color(0xFFE1E4E7),
                      textColour: clicked == _roundWidget.birds
                          ? Colors.white
                          : Colors.black,
                      onpress: () {
                        setState(() {
                          clicked = _roundWidget.birds;
                        });
                      },
                    ),
                    SizedBox(width: 8.0),
                    Rounded_widget(
                      title: 'Rabbits',
                      colour: clicked == _roundWidget.rabbits
                          ? Colors.black
                          : Color(0xFFE1E4E7),
                      textColour: clicked == _roundWidget.rabbits
                          ? Colors.white
                          : Colors.black,
                      onpress: () {
                        setState(() {
                          clicked = _roundWidget.rabbits;
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
