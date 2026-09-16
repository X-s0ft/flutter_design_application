import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HolderWidget extends StatelessWidget {
  const HolderWidget(this.children, {super.key});
  final List<Widget> children;

  // TODO: Поработать над адаптацией интерфейса под разные разрешения
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
        padding: EdgeInsets.all(45),
        child: SingleChildScrollView(
          child: Column(
            spacing: 112,
            children: [
              Center(child: Column(spacing: 83, children: children)),
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
