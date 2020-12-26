import 'package:flutter/material.dart';

class Tab4 extends StatelessWidget {
  final ScrollController controller;
  Tab4(this.controller);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: controller,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
