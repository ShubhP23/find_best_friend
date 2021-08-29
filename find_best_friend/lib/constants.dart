import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const kTextFieldDecoration = InputDecoration(
  hintText: 'Search',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  fillColor: Color(0xFFE1E4E7),
  filled: true,
  suffixIcon: FaIcon(
    FontAwesomeIcons.slidersH,
    color: Colors.black54,
  ),
  suffixIconConstraints: BoxConstraints(
    minWidth: 40.0,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(20.0),
      topRight: Radius.circular(20.0),
      bottomLeft: Radius.circular(20.0),
      bottomRight: Radius.circular(20.0),
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFFE1E4E7), width: 1.0),
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(20.0),
      topRight: Radius.circular(20.0),
      bottomLeft: Radius.circular(20.0),
      bottomRight: Radius.circular(20.0),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFFE1E4E7), width: 2.0),
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(20.0),
      topRight: Radius.circular(20.0),
      bottomLeft: Radius.circular(20.0),
      bottomRight: Radius.circular(20.0),
    ),
  ),
);
