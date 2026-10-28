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
        spacing: 45,
        children: [
          // First Layout
          Wrap(
            runSpacing: 50,
            spacing: 35,
            children: [
              Container(
                width: 1015,
                height: 619,
                padding: EdgeInsets.fromLTRB(33, 33, 0, 10),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: noir,
                  borderRadius: BorderRadius.all(const Radius.circular(40)),
                ),
                child: Row(
                  spacing: 65,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        spacing: 30,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Actuellement',
                            style: TextTheme.of(context).bodyMedium,
                          ),
                          Text(
                            'Alice Guy Blaché',
                            softWrap: true,
                            style: TextTheme.of(context).titleMedium,
                          ),
                          Text(
                            'Du 24 mars au 24 mai 2025 de 10H à 18H',
                            style: TextTheme.of(
                              context,
                            ).bodySmall!.copyWith(color: Colors.white),
                          ),
                          Text(
                            '22 Rue du Départ, 75015 Paris',
                            style: TextTheme.of(
                              context,
                            ).bodySmall!.copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    LayoutBuilder(
                      builder: (context, constraints) {
                        if (MediaQuery.of(context).size.width >= 1040) {
                          return Image.asset(
                            'lib/assets/imgs/item_1.png',
                            height: 550,
                          );
                        } else {
                          return SizedBox();
                        }
                      },
                    ),
                  ],
                ),
              ),
              Wrap(
                runSpacing: 50,
                spacing: 35,
                direction: MediaQuery.of(context).size.width <= 1650
                    ? Axis.horizontal
                    : Axis.vertical,
                children: [
                  EhibitionTainer(),
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

          // Second layer objects
          Wrap(
            spacing: 35,
            runSpacing: 50,
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Wrap(
                spacing: 35,
                runSpacing: 50,
                direction: MediaQuery.of(context).size.width > 1000
                    ? Axis.vertical
                    : Axis.horizontal,
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

          // Third objects
          Wrap(
            runSpacing: 50,
            spacing: 35,
            direction: Axis.horizontal,
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              AcressTeinet('Bette Davis', 'lib/assets/imgs/item_4.png'),
              Wrap(
                spacing: 35,
                runSpacing: 50,
                direction: MediaQuery.of(context).size.width > 1000
                    ? Axis.vertical
                    : Axis.horizontal,
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
