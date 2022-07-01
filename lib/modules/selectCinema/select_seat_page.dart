import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_app/config/app_color.dart';
import 'package:movie_app/config/text_style.dart';
import 'package:movie_app/constants/assets_path.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/modules/selectCinema/check_out_page.dart';
import 'package:movie_app/modules/selectCinema/components/arrow_back_button.dart';
import 'package:movie_app/modules/selectCinema/components/movie_title.dart';
import 'package:movie_app/modules/selectCinema/components/seat_status_bar.dart';

class SelectSeatPage extends StatelessWidget {
  const SelectSeatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ArrowBackButton(),
            const MovieTitle(),
            const SeatStatusBar(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: seatRow
                        .map((row) => Builder(
                              builder: (context) => Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: seatNumber.map((number) {
                                  return ToggleButton(
                                      child: Text(
                                    row + number,
                                    style: TxtStyle.heading3Medium,
                                  ));
                                }).toList(),
                              ),
                            ))
                        .toList()),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: const Text(
                'Screen',
                style: TxtStyle.heading4,
              ),
            ),
            Image.asset(AssetPath.screenx2),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Total Price',
                        style: TxtStyle.heading4Light,
                      ),
                      Text(
                        '150 000 VND',
                        style: TxtStyle.heading3Medium,
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const CheckOutPage()));
                    },
                    child: Container(
                      height: size.height / 16,
                      width: size.width / 3,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: DarkTheme.blueMain,
                          borderRadius: BorderRadius.circular(16)),
                      child: const Text(
                        'Book Ticket',
                        style: TxtStyle.heading3Medium,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ToggleButton extends StatefulWidget {
  const ToggleButton({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  TicketStates _ticketStates = TicketStates.idle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 48,
      child: Expanded(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _ticketStates = _ticketStates == TicketStates.idle
                  ? TicketStates.active
                  : TicketStates.idle;
            });
          },
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: _ticketStates == TicketStates.idle
                    ? DarkTheme.greyBackground
                    : DarkTheme.blueMain),
            child: widget.child,
          ),
        ),
      ),
    );
  }
}
