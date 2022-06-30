import 'package:flutter/material.dart';
import 'package:movie_app/config/app_color.dart';
import 'package:movie_app/modules/home/home_page.dart';
// import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    //   statusBarColor: Colors.white,
    //   statusBarBrightness: Brightness.light
    // ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'montserrat',
          scaffoldBackgroundColor: DarkTheme.darkerBackground,
          textTheme: Theme.of(context).textTheme.apply(
                bodyColor: DarkTheme.white,
                displayColor: DarkTheme.white,
              )),
      home: const HomePage(),
    );
  }
}
