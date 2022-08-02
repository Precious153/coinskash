import 'package:flutter/material.dart';

class HomeBackground extends StatelessWidget {
  HomeBackground({required this.child});
  Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Stack(
        children: [
          Container(
            height:(237),
            decoration: BoxDecoration(
                color:Color(0xff191F2B),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(32),
                    bottomLeft: Radius.circular(32)
                )
            ),
          ),
          child
        ],
      ),
    );
  }
}