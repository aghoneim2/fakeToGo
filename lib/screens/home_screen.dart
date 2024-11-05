import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //using List view for scrollable effect
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    children: [
                      Text("Good Morning"),
                      Text("Book Tickets"),
                    ],
                  ),
                  Container(
                    width: 100,
                    height: 70,
                    color: Colors.red,
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Search icon"),
                  Text("Empty Space"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
