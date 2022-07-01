import 'package:flutter/material.dart';
import 'package:movie_app/config/text_style.dart';

class MovieTitle extends StatelessWidget {
  const MovieTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 24, top: 8),
          child: const Text(
            'Ralp Breaks the Internet',
            style: TxtStyle.heading2,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 24, top: 4),
          child: const Text(
            'FK Sudirman XXI',
            style: TxtStyle.heading3Medium,
          ),
        ),
      ],
    );
  }
}