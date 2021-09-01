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
  // To toggle ProfilePage Heart Icon between Active State and Inactive State.
  void favourite() {
    setState(() {
      kFetchData[widget.idx]['favourite'] == true
          ? kFetchData[widget.idx]['favourite'] = false
          : kFetchData[widget.idx]['favourite'] = true;
    });
    // if the heart icon will be in Active state the same will reflect
    //in the ProfilePage and vice-versa in the HomePage.
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Scaffold(
          body: Stack(
            children: [
              //Providing Image to the ProfilePage by Fetching Data from
              //kFetchData List.
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
                            //Popping the ProfilePage.
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
              //Draggable Sheet to Contain the About Section.
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
                      //Passing Controller for the Draggable Sheet.
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
                                    kFetchData[widget.idx]["name"]
                                        .toString()
                                        .toUpperCase(),
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
                                        //Toggling the Heart Icon.
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
                                  Spacer(),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        WidgetSpan(
                                          //Fetching data to check if Gender is
                                          //male or female and accordingly
                                          //toggle the icon.
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

        //Stacked the Adopt Now Material Button above Scaffold.
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
