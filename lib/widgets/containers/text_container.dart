import 'package:flutter/material.dart';

import '../../assets/colors.dart';

class TextTainer extends StatelessWidget {
  const TextTainer(this.headliner, this.text, {super.key});
  final String headliner;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(29, 23, 0, 29),
      width: 712,
      height: 367,
      decoration: BoxDecoration(
        border: Border.all(color: noir, width: 2),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(headliner),
          Text(text, softWrap: true),
          OutlinedButton(onPressed: null, child: Text('Exposition terminé')),
        ],
      ),
    );
  }
}
