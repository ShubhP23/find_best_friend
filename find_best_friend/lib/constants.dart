import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// TextFieldDecoration for the Search Bar in HomePage.
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

//A dynamic List with datas that can be fetched when required in both the pages
//by passing arguments.
List<dynamic> kFetchData = [
  {
    "name": "Charles",
    "location": "  London",
    "image": "images/charles-dog.jpg",
    "dob": "  1 year",
    "gender": "  Male",
    "breed": "  Pug",
    "favourite": false,
    "about":
        "The Pug is often described as a lot of dog in a small space. These sturdy, compact dogs are a part of the American Kennel Club’s Toy group, and are known as the clowns of the canine world because they have a great sense of humor and like to show off. ven though these are purebred dogs, you may find them in the care of shelters or rescue groups. Remember to adopt! Don’t shop if you want to bring a dog home. Originally bred to be lap dogs, Pugs thrive on human companionship. They’re highly sensitive, and though they can make for great apartment pets, they will not appreciate being left home alone for long hours of the day. Although these pups have a stubborn side, especially when it comes to house training, they’re playful, affectionate dogs who will get along well even with novice pet parents. If you’re looking for a loving, easygoing pal, this may be the breed for you!",
  },
  {
    "name": "Steffi",
    "location": "  Netherlands",
    "image": "images/steffi-cat.jpg",
    "dob": "  5 months",
    "gender": "  Female",
    "breed": "  Snowshoe",
    "favourite": false,
    "about":
        "The snowshoe breed beautifully combines traits from both the Siamese and American shorthair. The result is this lovely cat who is simultaneously reminiscent of both sides of her lineage while remaining wholly unique. A medium-large, healthy, long-lived breed, the snowshoe is a devoted family companion and a cat who not only tolerates but openly indulges in the company and affection of her people. The snowshoe looks almost exactly like a marriage of the Siamese and American shorthair might suggest. Maintaining much of the body length of the Siamese, but adding a little more of the American shorthair’s heft to it, the snowshoe is a medium-large, moderately built cat. Their heads can be either triangular or apple-shaped, and the best specimens have shorthair markings on their faces, with an upside down “V” marking that is one of the standards for the breed. Ears are wide set and pointed, eyes are walnut shaped and always some shade of blue. Snowshoe fur is short, single-coated, and color pointed. Darker colors like fawn, chocolate, and blue are the most common, but black, orange, and lilac are possible as well. Paws are white, giving the breed the look from which their name was derived. The white can extend up the legs to varying degrees, though too much or too little white can relegate a purebred snowshoe to pet status rather than show or breeding stock.",
  },
  {
    "name": "Camylla",
    "location": "  Germany",
    "image": "images/camylla-dog.jpg",
    "dob": "  9 months",
    "gender": "  Male",
    "breed": "  Golden Retriver",
    "favourite": false,
    "about":
        "Golden Retrievers make fantastic family pets, but they’re also versatile sporting and working dogs. In sports they excel in disciplines as varied as obedience and agility; they also serve as search-and-rescue and guide dogs; not to mention their outstanding ability as trackers and retrievers on the hunt. Golden Retrievers have a host of qualities to justify their worldwide popularity. The origins of the breed go all the way back to a yellow retriever by the name of Nous, bought by Lord Tweedmouth in 1865. The breed was then crossed a number of times, notably with a now defunct breed, the Tweed Water Spaniel, and later with the Bloodhound and the Irish Setter. Makes a great family dog, Makes a versatile working dog, Needs moderate training.",
  },
];
