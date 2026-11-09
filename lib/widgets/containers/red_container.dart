import 'package:flutter/material.dart';

import '../../assets/colors.dart';

class RedTainer extends StatelessWidget {
  const RedTainer(
    this.leadertext,
    this.textonbutton,

    {
    super.key,
  });
  final String leadertext;
  final String textonbutton;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(25, 33, 25, 30),
      width: 400,
      height: 200,
      decoration: BoxDecoration(
        color: rouge,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(leadertext, style: TextStyle(color: Colors.white)),
              Image.asset('lib/assets/imgs/vector.png'),
            ],
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              textonbutton,
              style: TextTheme.of(
                context,
              ).bodySmall!.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
