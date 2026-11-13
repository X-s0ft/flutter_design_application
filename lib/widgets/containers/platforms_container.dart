import 'package:material_ui/material_ui.dart';

class PlatformsTainer extends StatelessWidget {
  const PlatformsTainer(this.btntext, this.colorbtn, {super.key});
  final String btntext;
  final Color colorbtn;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black),
      child: Text(btntext),
    );
  }
}
