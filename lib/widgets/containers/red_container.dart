import 'package:flutter/material.dart';

import '../../assets/colors.dart';

class RedTainer extends StatelessWidget {
  const RedTainer(
    this.leadertext,
    this.textonbutton,
    this.icon,
    this.width,
    this.height, {
    super.key,
  });
  final String leadertext;
  final String textonbutton;
  final String icon;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(33, 33, 33, 10),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: rouge,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(leadertext, style: TextStyle(color: Colors.white)),
              Image.asset(icon),
            ],
          ),
          TextButton(onPressed: () {}, child: Text(textonbutton)),
        ],
      ),
    );
  }
}
