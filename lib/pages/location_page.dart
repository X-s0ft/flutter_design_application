import 'package:material_ui/material_ui.dart';
import 'package:flutter_design_application/widgets/containers/all_containers.dart';
import 'package:flutter_design_application/widgets/holder_widget.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return HolderWidget(
      Wrap(
        crossAxisAlignment: .end,

        spacing: 32,
        direction: .horizontal,
        children: [
          Wrap(
            spacing: 13,
            direction: .vertical,
            children: [
              Text(
                'Alice Guy \nBlaché',
                style: TextStyle(color: Colors.black),
              ), //TODO: Заменить из готовых
              Text(
                "Du 24 mars au 24 mai 2025 \nde 10H à 18H",
                style: TextStyle(
                  color: Colors.black,
                ), //TODO: Заменить из готовых
              ),
              Text(
                "22 Rue du Départ, 75015 Paris",
                style: TextStyle(
                  color: Colors.black,
                ), //TODO: Заменить из готовых
              ),
              Wrap(
                crossAxisAlignment: .end,
                spacing: 24,
                direction: .horizontal,
                children: [
                  Image.asset('lib/assets/imgs/map.png'),
                  Wrap(
                    alignment: .start,
                    spacing: 25,
                    direction: .vertical,
                    children: [
                      RedTainer(
                        "Découvrez dès \nmaintenant",
                        "Réservez vos billets",
                      ),
                      Container(
                        padding: .all(20),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(.circular(30)),
                        ),
                        width: 445,
                        height: 400,
                        child: Column(
                          spacing: 20,
                          children: [
                            Text(
                              "Studio24 vous invite à découvrir l'univers fascinant d'Alice Guy Blaché, la première réalisatrice de l'histoire du cinéma. Plongez dans le parcours exceptionnel de cette femme visionnaire qui a marqué l'industrie cinématographique par son audace et sa créativité.",
                              softWrap: true,
                              style: TextStyle(
                                fontSize: 20,
                              ), //TODO: Заменить из готовых
                            ),
                            Text(
                              "Installée au cœur de Paris, l'exposition propose une immersion captivante à travers des archives inédites, des projections et des installations interactives.",
                              softWrap: true,
                              style: TextStyle(
                                fontSize: 20,
                              ), //TODO: Заменить из готовых
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset('lib/assets/imgs/itemgroup_3.png'),
          ),
        ],
      ),
    );
  }
}
