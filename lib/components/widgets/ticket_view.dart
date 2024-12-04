import 'package:flutter/material.dart';

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
        margin: EdgeInsets.only(right: 16),
        color: Colors.red,
        child: Text("hello "),
      ),
    );
  }
}
