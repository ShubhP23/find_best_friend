import 'package:find_best_friend/screens.dart/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:find_best_friend/constants.dart';
import 'package:find_best_friend/components.dart/rounded_widget.dart';
import 'package:find_best_friend/components.dart/home_card.dart';

//enum used to define a small set of predefined set of
//values that will be used across the logics
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
                        backgroundColor: Color(0xFFD7E0E7),
                        child: FaIcon(
                          FontAwesomeIcons.userAlt,
                          color: Color(0xFF8C8293),
                        ),
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
                        width: 45.0,
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
                        //checking through all the rounded_widgets.
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
                      //A list kFetchData is used to pass
                      //values from one page to another with arguments.
                      children: kFetchData
                          //Wrapping the Container containing Image with
                          //GestureDetector to go to ProfilePage on tap.
                          .map((e) => GestureDetector(
                                // async and wait used to reflect the State changes
                                // in HomePage to the ProfilePage
                                //and vice-versa
                                onTap: () async {
                                  await Navigator.pushNamed(
                                          context, ProfilePage.id,
                                          arguments: kFetchData.indexOf(e))
                                      .then((value) => setState(() {
                                            // Call setState to refresh the page.
                                          }));
                                },
                                child: HomeCard(
                                  animalData: e,
                                  //Fetching the List with it's index value.
                                  idx: kFetchData.indexOf(e),
                                ),
                              ))
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

      //Floating action Button for the HomePage.
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
          //Docked the FAB on top of BottomAppBar.
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
                      child: Icon(
                        Icons.home_filled,
                        size: 29.0,
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
