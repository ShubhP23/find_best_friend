import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:find_best_friend/constants.dart';
import 'package:find_best_friend/components.dart/rounded_widget.dart';
import 'package:find_best_friend/components.dart/home_card.dart';

enum _roundWidget { all, dogs, cats, birds, rabbits }
int currentTab = 0;

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
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
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
                  SizedBox(height: 15.0),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        HomeCard(
                          cardImage: 'images/charles-dog.jpg',
                        ),
                        HomeCard(cardImage: 'images/alvan-cat.jpg'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: Container(
        height: MediaQuery.of(context).size.height * .08,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            onPressed: () {},
            child: FaIcon(FontAwesomeIcons.plus),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        height: 60.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          boxShadow: [
            BoxShadow(color: Colors.black26, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          currentTab = 0;
                        });
                      },
                      child: FaIcon(
                        FontAwesomeIcons.home,
                        color: currentTab == 0 ? Colors.black : Colors.grey,
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          currentTab = 1;
                        });
                      },
                      child: FaIcon(
                        FontAwesomeIcons.search,
                        color: currentTab == 1 ? Colors.black : Colors.grey,
                      ),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          currentTab = 2;
                        });
                      },
                      child: FaIcon(
                        FontAwesomeIcons.solidHeart,
                        color: currentTab == 2 ? Colors.black : Colors.grey,
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          currentTab = 3;
                        });
                      },
                      child: FaIcon(
                        FontAwesomeIcons.solidUser,
                        color: currentTab == 3 ? Colors.black : Colors.grey,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
