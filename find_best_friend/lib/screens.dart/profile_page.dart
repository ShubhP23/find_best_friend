import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatefulWidget {
  static const String id = 'profilePage';

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Scaffold(
          body: Stack(
            children: [
              Container(
                child: Image.asset('images/charles-dog.jpg'),
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.chevronLeft,
                        color: Colors.white,
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
                builder: (context, controller) => ClipRRect(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20.0),
                  ),
                  child: Container(
                    color: Colors.white,
                    child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15.0,
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Charles'.toUpperCase(),
                                    style: TextStyle(
                                      fontSize: 35.0,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  CircleAvatar(
                                    radius: 25.0,
                                    backgroundColor: Color(0xFFE1E4E7),
                                    child: FaIcon(
                                      FontAwesomeIcons.solidHeart,
                                      size: 20.0,
                                      color: Colors.redAccent,
                                    ),
                                  ),
                                ],
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
