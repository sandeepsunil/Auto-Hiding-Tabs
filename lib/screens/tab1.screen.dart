import 'package:flutter/material.dart';

class Tab1 extends StatelessWidget {
  final ScrollController controller;
  Tab1(this.controller);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: controller,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.red,
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
