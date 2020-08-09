import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';

class Location {
  String name;
  String address;
  LatLng locationCoords;
  Widget image;
  String no;

  Location({
    this.name,
    this.address,
    this.locationCoords,
    this.image,
    this.no,
  });
}

final List<Location> Lnames = [
  Location(
    address: 'Ahmedabad-380015',
    name: 'Natraj Medical Stores',
    no: '+917926933808',
    locationCoords: LatLng(23.012868, 72.5216626),
    image: Image(
      image: AssetImage('assets/i1.jpg'),
      width: 80.0,
    ),
  ),
  Location(
    address: 'Ahmedabad - 382481',
    name: 'Apollo Pharmacy',
    no: '040 474476975',
    locationCoords: LatLng(23.1050437, 72.5608096),
    image: Image(
        image: AssetImage('assets/i2.jpg'), fit: BoxFit.cover, width: 80.0),
  ),
  Location(
    address: 'Ahmedabad - 380061',
    name: 'Akshar medical store',
    no: '079 27456822',
    locationCoords: LatLng(23.0757027, 72.5290296),
    image:
        Image(image: AssetImage('assets/i3.jpeg'), width: 80.0, height: 160.0),
  ),
];
