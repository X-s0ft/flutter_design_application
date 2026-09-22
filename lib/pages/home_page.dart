import 'package:flutter/material.dart';
import 'package:flutter_design_application/assets/colors.dart';
import 'package:flutter_design_application/widgets/containers/all_containers.dart';
import 'package:flutter_design_application/widgets/holder_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return HolderWidget(
      Column(
        spacing: 83,
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 1450) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 27,
                    children: [
                      Container(
                        width: 900,
                        padding: EdgeInsets.fromLTRB(33, 33, 0, 10),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: noir,
                          borderRadius: BorderRadius.all(
                            const Radius.circular(40),
                          ),
                        ),
                        // width: MediaQuery.of(context).size.width / 2,
                        child: Row(
                          spacing: 65,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Actuellement',
                                  style: TextStyle(color: Colors.white),
                                ),
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
                            Image.asset(
                              'lib/assets/imgs/item_1.png',
                              width: MediaQuery.of(context).size.width / 4,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        spacing: 30,
                        children: [
                          EhibitionTainer(479, 377),
                          RedTainer(
                            'Vous avez des questions ?',
                            'Contactez-nous',
                            'lib/assets/imgs/vector.png',
                            479,
                            212,
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              } else {
                return SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 27,
                    children: [
                      Container(
                        width: 770,
                        padding: EdgeInsets.fromLTRB(33, 33, 0, 10),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: noir,
                          borderRadius: BorderRadius.all(
                            const Radius.circular(40),
                          ),
                        ),
                        child: Row(
                          spacing: 65,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Actuellement',
                                  style: TextStyle(color: Colors.white),
                                ),
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
                            LayoutBuilder(
                              builder: (context, constraints) {
                                if (constraints.maxWidth > 500) {
                                  return Image.asset(
                                    'lib/assets/imgs/item_1.png',
                                    width:
                                        MediaQuery.of(context).size.width / 4,
                                  );
                                } else {
                                  return SizedBox();
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        spacing: 75,
                        children: [
                          EhibitionTainer(424, 238),
                          RedTainer(
                            'Vous avez des questions ?',
                            'Contactez-nous',
                            'lib/assets/imgs/vector.png',
                            238,
                            236,
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }
            },
          ),

          // Second objects (adaptive == false)
          Row(
            spacing: 22,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                spacing: 21,
                children: [
                  TextTainer('Pionnière du cinéma', 'text'),
                  Image.asset(
                    width: 712,
                    height: 305,
                    'lib/assets/imgs/itemgroup_1.png',
                  ),
                ],
              ),
              AcressTeinet('Ida Lupino', 'lib/assets/imgs/item_3.png'),
            ],
          ),

          // Third objects (adaptive == false)
          Row(
            spacing: 22,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AcressTeinet('Bette Davis', 'lib/assets/imgs/item_4.png'),
              Column(
                spacing: 21,
                children: [
                  TextTainer('Une icône du cinéma', 'text'),
                  Image.asset(
                    width: 712,
                    height: 305,
                    'lib/assets/imgs/itemgroup_2.png',
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
