import 'package:flutter/material.dart';
import 'package:flutter_design_application/widgets/containers/all_containers.dart';
import 'package:flutter_design_application/widgets/holder_widget.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return HolderWidget(
      Wrap(
        children: [
          Text('Alice Guy Blaché', style: TextStyle(color: Colors.black)),
          Text(
            "Du 24 mars au 24 mai 2025 de 10H à 18H \n22 Rue du Départ, 75015 Paris",
            style: TextStyle(color: Colors.black),
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
