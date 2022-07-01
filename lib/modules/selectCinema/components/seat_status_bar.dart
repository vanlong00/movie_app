import 'package:flutter/material.dart';
import 'package:movie_app/config/app_color.dart';
import 'package:movie_app/config/text_style.dart';

class SeatStatusBar extends StatelessWidget {
  const SeatStatusBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildSeatStatusBar(color: DarkTheme.darkBackground, content: 'Available'),
          buildSeatStatusBar(color: DarkTheme.greyBackground, content: 'Booked'),
          buildSeatStatusBar(color: DarkTheme.blueMain, content: 'Your Seat'),
        ],
      ),
    );
  }

  Row buildSeatStatusBar({required String content, required Color color}) {
    return Row(
      children: [
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            content,
            style: TxtStyle.heading4,
          ),
        )
      ],
    );
  }
}