import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HolderWidget extends StatelessWidget {
  const HolderWidget(this.child, {super.key});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('lib/assets/imgs/logo.png', width: 142, height: 42),
        actions: [
          TextButton(
            onPressed: () {
              context.go('/');
            },
            child: Text('Accueil'),
          ),
          TextButton(
            onPressed: () {
              context.go('/location');
            },
            child: Text('Actuellement'),
          ),
          TextButton(
            onPressed: () {
              context.go('/contact');
            },
            child: Text('Contact'),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(44, 0, 44, 20),
        child: SingleChildScrollView(
          child: Column(
            spacing: 112,
            children: [
              Center(child: child),
              LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth < 550) {
                    return SizedBox();
                  } else {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'lib/assets/imgs/logo.png',
                          width: 142,
                          height: 42,
                        ),
                        Row(
                          spacing: 29,
                          children: [
                            Text(
                              'Mentions légales',
                              style: Theme.of(context).textTheme.bodySmall!
                                  .copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                            ),
                            Text(
                              'Contact',
                              style: Theme.of(context).textTheme.bodySmall!
                                  .copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                            ),
                          ],
                        ),
                        Text(
                          'Studio24 © 2025',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
