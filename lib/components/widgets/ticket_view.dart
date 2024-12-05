import 'package:flutter/material.dart';
import 'package:hello/components/res/styles/app_styles.dart';
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
          179, //usually stays fixed because height is limited for scroll (can still be dynamic)
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppStyles.ticketBlue,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(21),
            topRight: Radius.circular(21),
          ),
        ),
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "NYC",
                    style:
                        AppStyles.headLineStyle3.copyWith(color: Colors.white),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  BigDot(),
                  Expanded(
                    child: Container(),
                  ),
                  BigDot(),
                  Expanded(
                    child: Container(),
                  ),
                  Text(
                    "London",
                    style:
                        AppStyles.headLineStyle3.copyWith(color: Colors.white),
                  ),
                ],
              ),
              Row(
                children: [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
