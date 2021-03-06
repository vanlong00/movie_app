import 'package:flutter/material.dart';
import 'package:movie_app/config/app_color.dart';
import 'package:movie_app/config/text_style.dart';
import 'package:movie_app/constants/assets_path.dart';
import 'package:movie_app/modules/selectCinema/components/custom_header.dart';
import 'package:movie_app/widgets/star.dart';

class CheckOutPage extends StatelessWidget {
  const CheckOutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomHeader(content: 'Checkout\nMovie', size: size),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              padding: const EdgeInsets.symmetric(vertical: 24),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: DarkTheme.white, width: 1))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width / 2.5,
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      AssetPath.posterRalphx2,
                      scale: 1.2,
                    ),
                  ),
                  MovieInfoWidget(size: size)
                ],
              ),
            ),
            buildPriceTag('ID Order', '22081996'),
            buildPriceTag('Cinema', 'FX Sudirman XX1'),
            buildPriceTag('Date & Time', 'Sun May 22, 16:40'),
            buildPriceTag('Seat Number', 'D7,D8,D9'),
            buildPriceTag('Price', 'Rp 50.000x3'),
            buildPriceTag('Total', '150.000VND'),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              padding: const EdgeInsets.only(bottom: 24),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: DarkTheme.white, width: 1))),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Your Wallet',
                    style: TxtStyle.heading4Light,
                  ),
                  Text(
                    '200.000 VND',
                    style: TxtStyle.heading4
                        .copyWith(color: GradientPalette.lightBlue1),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Center(
              child: Container(
                height: size.height / 16,
                width: size.width / 2,
                decoration: BoxDecoration(
                    color: DarkTheme.blueMain,
                    borderRadius: BorderRadius.circular(20)),
                alignment: Alignment.center,
                child: const Text(
                  'Check Out',
                  style: TxtStyle.heading3,
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }

  Container buildPriceTag(String content, String price) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            content,
            style: TxtStyle.heading4Light,
          ),
          Text(
            price,
            style: TxtStyle.heading4,
          ),
        ],
      ),
    );
  }
}

class MovieInfoWidget extends StatelessWidget {
  const MovieInfoWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    );
  }
}
