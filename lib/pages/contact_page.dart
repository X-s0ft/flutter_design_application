import 'package:material_ui/material_ui.dart';
import 'package:flutter_design_application/widgets/holder_widget.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return HolderWidget(
      Column(
        children: [Text('ContactPage', style: TextStyle(color: Colors.black))],
      ),
    );
  }
}
