import 'package:flutter/material.dart';
import 'package:movie_app/config/text_style.dart';
import 'package:movie_app/modules/home/components/category_bar.dart';
import 'package:movie_app/modules/home/components/header.dart';
import 'package:movie_app/modules/home/components/search_bar.dart';
import 'package:movie_app/modules/home/components/slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          //header
          HomeHeader(size: size),
          //search bar
          SearchBar(size: size),
          //category bar
          CategoryBar(size: size),
          //title
          buildTitle('Now Playing'),
          //slider
          SliderBar(size: size)
        ],
      )),
    );
  }

  Padding buildTitle(String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Text(
        content,
        style: TxtStyle.heading2,
      ),
    );
  }
}


