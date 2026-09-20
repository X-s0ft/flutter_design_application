import 'package:flutter/material.dart';

import '../../assets/colors.dart';

class AcressTeinet extends StatelessWidget {
  const AcressTeinet(this.nameactress, this.imageactress, {super.key});
  final String nameactress;
  final String imageactress;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(35, 86, 0, 0),
      decoration: BoxDecoration(
        color: noir,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      width: 618,
      height: 693,
      child: Stack(
        children: [
          Text(nameactress, style: TextStyle(color: Colors.white)),
          Image.asset(width: 590, height: 606, imageactress),
        ],
      ),
    );
  }
}
