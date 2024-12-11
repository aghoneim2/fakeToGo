import 'package:flutter/material.dart';
import 'package:hello/components/res/styles/app_styles.dart';
import 'package:hello/components/widgets/app_layoutbuilder_widget.dart';
import 'package:hello/components/widgets/big_circle.dart';
import 'package:hello/components/widgets/big_dot.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context)
        .size; //gives size of the widget relative to screen
    return SizedBox(
      width: size.width *
          0.85, //take up 85% of screen; this is dynamic based on indiv device
      height:
          189, //usually stays fixed because height is limited for scroll (can still be dynamic)
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            //blue part of ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  //show departure and destinations with icons first line
                  Row(
                    children: [
                      Text(
                        "NYC",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      BigDot(),
                      Expanded(
                        child: Stack(
                          children: [
                            const SizedBox(
                              height: 24,
                              child: AppLayoutBuilderWidget(
                                randomDivider: 6,
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle:
                                    1.57, //90 degrees are 1.57 radians (trigonometry)
                                child: const Icon(
                                  Icons.airplanemode_on_rounded,
                                  color: Colors.white,
                                ),
                              ), //rotates a widget by a certain value
                            ),
                          ],
                        ),
                      ),
                      BigDot(),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        "LDN",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  //show departure and destination names with time second line
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          "New York",
                          style: AppStyles.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        "8H 30M",
                        style: AppStyles.headLineStyle4
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          "London",
                          textAlign: TextAlign.end,
                          style: AppStyles.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //circles and dot lines
            Container(
              color: AppStyles.ticketOrange,
              child: const Row(
                children: [
                  BigCircle(
                    isRight: true,
                  ),
                  Expanded(
                    child: AppLayoutBuilderWidget(
                      randomDivider: 16,
                      width: 6,
                    ),
                  ),
                  BigCircle(
                    isRight: false,
                  ),
                ],
              ),
            ),
            //orange part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketOrange,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  //show departure and destinations with icons first line
                  Row(
                    children: [
                      Text(
                        "1 MAY",
                        style: AppStyles.headLineStyle4
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        "08:00 AM",
                        style: AppStyles.headLineStyle4
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        "23",
                        style: AppStyles.headLineStyle4
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  //show departure and destination names with time second line
                  Row(
                    children: [
                      Text(
                        "Date",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        "Departure Time",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        "Number",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
