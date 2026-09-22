import 'package:flutter/material.dart';

import '../../assets/colors.dart';

class EhibitionTainer extends StatelessWidget {
  const EhibitionTainer(this.width, this.height, {super.key});
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(33, 33, 0, 10),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: noir,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Expositions à venir',
                style: TextStyle(color: Colors.white),
              ),
              Text('en 2025', style: TextStyle(color: Colors.white)),
              Text('Francès Marion', style: TextStyle(color: Colors.white)),
            ],
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 100) {
                return Image.asset('lib/assets/imgs/item_2.png');
              } else {
                return SizedBox();
              }
            },
          ),
        ],
      ),
    );
  }
}
