import 'package:flutter/material.dart';
import 'package:flutter_design_application/assets/colors.dart';
import 'package:flutter_design_application/widgets/holder_widget.dart';
import '../widgets/containers.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return HolderWidget([
      Text('HomePage'),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 27,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(33, 33, 0, 10),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: noir,
              borderRadius: BorderRadius.all(const Radius.circular(40)),
            ),
            width: 846,
            height: 619,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Actuellement', style: TextStyle(color: Colors.white)),
                    Text(
                      'Alice Guy Blaché',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'Du 24 mars au 24 mai 2025 de 10H à 18H',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      '22 Rue du Départ, 75015 Paris',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Image.asset('lib/assets/imgs/item_1.png'),
              ],
            ),
          ),
          Column(
            spacing: 30,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(33, 33, 0, 10),
                width: 479,
                height: 377,
                decoration: BoxDecoration(
                  color: noir,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Expositions à venir',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text('en 2025', style: TextStyle(color: Colors.white)),
                    Text(
                      'Francès Marion',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(33, 33, 33, 10),
                width: 479,
                height: 212,
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
                        Text('Vous avez des questions ?'),
                        Image.asset('lib/assets/imgs/vector.png'),
                      ],
                    ),
                    Text('Contactez-nous'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      Row(children: [Text('Second')]),
      Row(children: [Text('Third')]),
    ]);
  }
}
