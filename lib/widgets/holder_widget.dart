import 'package:flutter/material.dart';

class HolderWidget extends StatelessWidget {
  const HolderWidget(this.child, {super.key});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: child),
    );
  }
}
