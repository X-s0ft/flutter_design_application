import 'package:flutter/material.dart';

class PlatformsTainer extends StatelessWidget {
  const PlatformsTainer(this.btntext, {super.key});
  final String btntext;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black),
      child: Text(btntext),
    );
  }
}
