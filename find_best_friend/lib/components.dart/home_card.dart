import 'package:find_best_friend/constants.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeCard extends StatefulWidget {
  final animalData;
  final idx;

  HomeCard({@required this.animalData, @required this.idx});

  @override
  _HomeCardState createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  void favourite() {
    setState(() {
      kFetchData[widget.idx]['favourite'] == true
          ? kFetchData[widget.idx]['favourite'] = false
          : kFetchData[widget.idx]['favourite'] = true;
    });
    // print(kFetchData[widget.idx]['favourite']);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        20.0,
                      ),
                      topRight: Radius.circular(
                        20.0,
                      ),
                      bottomLeft: Radius.circular(100.0),
                      bottomRight: Radius.circular(100.0),
                    ),
                    image: DecorationImage(
                      image: AssetImage(widget.animalData['image']),
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                )
              ],
            ),
            Container(
              height: 150.0,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26, spreadRadius: -4, blurRadius: 6),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    25.0,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.animalData['name'],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            favourite();
                          },
                          child: CircleAvatar(
                            radius: 22.0,
                            backgroundColor: Colors.black,
                            child: FaIcon(
                              FontAwesomeIcons.solidHeart,
                              size: 18.0,
                              color: kFetchData[widget.idx]['favourite'] == true
                                  ? Colors.blueAccent
                                  : Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: FaIcon(
                              FontAwesomeIcons.mapMarkerAlt,
                              color: Colors.yellow,
                              size: 20.0,
                            ),
                          ),
                          TextSpan(
                            text: widget.animalData["location"],
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: FaIcon(
                                  FontAwesomeIcons.solidClock,
                                  color: Colors.yellow,
                                  size: 18.0,
                                ),
                              ),
                              TextSpan(
                                text: widget.animalData["dob"],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 25.0),
                        RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: widget.animalData['gender'] == "  Male"
                                    ? FaIcon(
                                        FontAwesomeIcons.mars,
                                        color: Colors.yellow,
                                        size: 24.0,
                                      )
                                    : FaIcon(
                                        FontAwesomeIcons.venus,
                                        color: Colors.yellow,
                                        size: 24.0,
                                      ),
                              ),
                              TextSpan(
                                text: widget.animalData["gender"],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .03,
        )
      ],
    );
  }
}
