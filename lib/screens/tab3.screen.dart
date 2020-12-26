import 'package:flutter/material.dart';

class Tab3 extends StatelessWidget {
  final ScrollController controller;
  Tab3(this.controller);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: controller,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.cyan,
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.teal,
          ),
        ],
      ),
    );
  }
}
