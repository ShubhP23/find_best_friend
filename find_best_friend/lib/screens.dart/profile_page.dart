import 'package:find_best_friend/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatefulWidget {
  static const String id = 'profilePage';
  final idx;
  ProfilePage({@required this.idx});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Scaffold(
          body: Stack(
            children: [
              Container(
                child: Image.asset(kFetchData[widget.idx]['image']),
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            Navigator.pop(context);
                          });
                        },
                        icon: FaIcon(
                          FontAwesomeIcons.chevronLeft,
                          color: Colors.white,
                        ),
                      ),
                      FaIcon(
                        FontAwesomeIcons.ellipsisV,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              DraggableScrollableSheet(
                initialChildSize: 0.52,
                minChildSize: 0.52,
                maxChildSize: 0.7,
                builder: (context, controller) => ClipRRect(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20.0),
                  ),
                  child: Container(
                    color: Colors.white,
                    child: ListView(
                      controller: controller,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    kFetchData[widget.idx]["name"],
                                    style: TextStyle(
                                      fontSize: 35.0,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      favourite();
                                    },
                                    child: CircleAvatar(
                                      radius: 25.0,
                                      backgroundColor: Color(0xFFE1E4E7),
                                      child: FaIcon(
                                        FontAwesomeIcons.solidHeart,
                                        size: 20.0,
                                        color: kFetchData[widget.idx]
                                                    ['favourite'] ==
                                                true
                                            ? Colors.blueAccent
                                            : Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 13.0,
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: FaIcon(
                                        FontAwesomeIcons.mapMarkerAlt,
                                        color: Colors.lightBlue[200],
                                        size: 20.0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: kFetchData[widget.idx]["location"],
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 15.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        WidgetSpan(
                                          child: FaIcon(
                                            FontAwesomeIcons.solidClock,
                                            color: Colors.lightBlue[200],
                                            size: 18.0,
                                          ),
                                        ),
                                        TextSpan(
                                          text: kFetchData[widget.idx]["dob"],
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 15.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // SizedBox(width: 25.0),
                                  Spacer(),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        WidgetSpan(
                                          child: kFetchData[widget.idx]
                                                      ['gender'] ==
                                                  "  Male"
                                              ? FaIcon(
                                                  FontAwesomeIcons.mars,
                                                  color: Colors.lightBlue[200],
                                                  size: 24.0,
                                                )
                                              : FaIcon(
                                                  FontAwesomeIcons.venus,
                                                  color: Colors.lightBlue[200],
                                                  size: 24.0,
                                                ),
                                        ),
                                        TextSpan(
                                          text: kFetchData[widget.idx]
                                              ["gender"],
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 15.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        WidgetSpan(
                                          child: FaIcon(
                                            FontAwesomeIcons.solidSmile,
                                            color: Colors.lightBlue[200],
                                            size: 18.0,
                                          ),
                                        ),
                                        TextSpan(
                                          text: kFetchData[widget.idx]["breed"],
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 15.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 30.0),
                              Text(
                                'About breed',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 30.0,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                kFetchData[widget.idx]["about"],
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w300,
                                ),
                                softWrap: true,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: MaterialButton(
            onPressed: () {},
            child: Text(
              'Adopt now',
              style: TextStyle(
                color: Colors.white,
                fontSize: 23.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            color: Colors.black,
            minWidth: MediaQuery.of(context).size.width * .88,
            height: MediaQuery.of(context).size.height / 12,
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  29.0,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
