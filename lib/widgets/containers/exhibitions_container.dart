import 'package:flutter/material.dart';

import '../../assets/colors.dart';

class EhibitionTainer extends StatelessWidget {
  const EhibitionTainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 33, 0, 20),
      width: 505,
      height: 377,
      decoration: BoxDecoration(
        color: noir,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Expositions \nà venir \nen 2025 '),
              Text('Francès \nMarion'),
            ],
          ),

          Image.asset('lib/assets/imgs/item_2.png', height: 290),
        ],
      ),
    );
  }
}
