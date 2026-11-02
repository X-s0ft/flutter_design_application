import 'package:flutter/material.dart';
import 'package:flutter_design_application/widgets/holder_widget.dart';

import '../widgets/containers/all_containers.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return HolderWidget(
      Column(
        children: [
          Text('ContactPage', style: TextStyle(color: Colors.black)),
          PlatformsTainer('Data'),
        ],
      ),
    );
  }
}
