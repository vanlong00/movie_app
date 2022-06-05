import 'package:flutter/material.dart';
import 'package:movie_app/config/text_style.dart';
import 'package:movie_app/widgets/star.dart';

import '../../config/app_color.dart';
import '../../constants/assets_path.dart';
import 'components/arrow_back.dart';
import 'components/back_ground_widget.dart';

class MovieDetailPage extends StatelessWidget {
  const MovieDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
          child: Stack(
        children: [
          BackgroundWidget(size: size),
          Container(
            height: size.height / 3.5,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [GradientPalette.black1, GradientPalette.black2])),
          ),
          const ArrowBack(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 24, top: size.height / 4.5),
                child: Row(
                  children: [
                    SizedBox(
                      width: size.width / 2.5,
                      child: Image.asset(
                        AssetPath.posterRalph,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 8, bottom: 8),
                            width: size.width,
                            child: const Text(
                              'Ralp Break the Internet',
                              style: TxtStyle.heading3Medium,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 8, bottom: 8),
                            child: Row(
                              children: const [
                                StartComponent(),
                                StartComponent(),
                                StartComponent(),
                                StartComponent(),
                                StartComponent(),
                                Text(
                                  '(5.0)',
                                  style: TxtStyle.heading4,
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 8, bottom: 8),
                            width: size.width,
                            child: const Text(
                              'Action & adventure, Comedy',
                              style: TxtStyle.heading4Light,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 8, bottom: 8),
                            width: size.width,
                            child: const Text(
                              '1h4min',
                              style: TxtStyle.heading4Light,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}
