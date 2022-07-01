import 'package:flutter/material.dart';
import 'package:movie_app/config/app_color.dart';
import 'package:movie_app/config/text_style.dart';
import 'package:movie_app/constants/assets_path.dart';

class SelectCountryWidget extends StatelessWidget {
  const SelectCountryWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 4),
      height: size.height / 14,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: DarkTheme.white)),
      child: Row(
        children: const [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Select Your Country',
                  hintStyle: TxtStyle.heading4,
                  icon: Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: ImageIcon(
                      AssetImage(AssetPath.iconLocation),
                      color: DarkTheme.white,
                    ),
                  )),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.keyboard_arrow_down,
                size: 36,
                color: DarkTheme.white,
              )),
        ],
      ),
    );
  }
}