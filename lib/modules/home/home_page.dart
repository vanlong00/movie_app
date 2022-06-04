import 'package:flutter/material.dart';
import 'package:movie_app/modules/home/components/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(child: Column(
        children: [
          //header
          HomePageHeader(size: size)
          //search bar
        ],
      )),
    );
  }
}

