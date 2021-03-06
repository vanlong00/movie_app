import 'package:flutter/material.dart';
import 'package:movie_app/config/app_color.dart';
import 'package:movie_app/constants/assets_path.dart';

class NextButton extends StatelessWidget {
  final VoidCallback onTap;
  const NextButton({
    Key? key,
    required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16, bottom: 10),
      child: ElevatedButton(
        onPressed: onTap,
        child: const ImageIcon(
          AssetImage(AssetPath.iconNext),
          color: Colors.white,
          size: 30,
        ),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(20),
          primary: DarkTheme.blueMain
        ),
      ),
    );
  }
}