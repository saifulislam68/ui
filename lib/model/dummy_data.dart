import 'package:flutter/material.dart';

class Data {
  String? title;
  String? description;
  String? assetImage;
  String? text1;
  String? text2;
  String? subtitle;

  Data({
    this.title,
    this.description,
    this.assetImage,
    this.text1,
    this.text2,
    this.subtitle,
  });
}

class DummyData {
  final List<Data> intro = [
    Data(
      title: 'Introduction to Muraaqabah',
      assetImage: 'assets/images/man.png',
    ),
    Data(
      title: 'Introduction to Muraaqabah',
      assetImage: 'assets/images/man.png',
    ),
    Data(
      title: 'Introduction to Muraaqabah',
      assetImage: 'assets/images/man.png',
    )
  ];
  final List<Data> emoji = [
    Data(
      title: 'Happy',
      assetImage: 'assets/images/happy1.png',
    ),
    Data(
      title: 'Romantic',
      assetImage: 'assets/images/love.png',
    ),
    Data(
      title: 'Depressed',
      assetImage: 'assets/images/happy1.png',
    ),
    Data(
      title: 'Worried',
      assetImage: 'assets/images/happy1.png',
    ),
  ];
}
