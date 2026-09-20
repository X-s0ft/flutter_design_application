import 'package:flutter/material.dart';

import '../../assets/colors.dart';

class RedTainer extends StatelessWidget {
  const RedTainer(this.leadertext, this.textonbutton, this.icon, {super.key});
  final String leadertext;
  final String textonbutton;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(33, 33, 33, 10),
      width: MediaQuery.of(context).size.width / 3,
      height: MediaQuery.of(context).size.height / 5,
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
