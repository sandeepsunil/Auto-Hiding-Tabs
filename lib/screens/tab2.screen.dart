import 'package:flutter/material.dart';

class Tab2 extends StatelessWidget {
  final ScrollController controller;
  Tab2(this.controller);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: controller,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.green,
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
