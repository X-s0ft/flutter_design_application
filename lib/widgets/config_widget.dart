import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_design_application/assets/theme.dart';
import 'package:flutter_design_application/router/router.dart';

class ConfigWidget extends StatelessWidget {
  const ConfigWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: thememain,
      debugShowCheckedModeBanner: false,
      showSemanticsDebugger: false,
    );
  }
}
