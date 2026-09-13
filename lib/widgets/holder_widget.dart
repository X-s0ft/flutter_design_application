import 'package:flutter/material.dart';

class HolderWidget extends StatelessWidget {
  const HolderWidget(this.child, {super.key});
  final Widget child;

  // TODO: Поработать над адаптацией интерфейса под разные разрешения
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('lib/assets/imgs/logo.png', width: 158, height: 63),
        actions: [
          TextButton(onPressed: () {}, child: Text('Accueil')),
          TextButton(onPressed: () {}, child: Text('Actuellement')),
          TextButton(onPressed: () {}, child: Text('Contact')),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(45),
        child: Center(
          child: Column(
            children: [
              child,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'lib/assets/imgs/logo.png',
                    width: 158,
                    height: 63,
                  ),
                  SizedBox(
                    child: Row(
                      spacing: 29,
                      children: [
                        Text(
                          'Mentions légales',
                          style: Theme.of(context).textTheme.bodySmall!
                              .copyWith(decoration: TextDecoration.underline),
                        ),
                        Text(
                          'Contact',
                          style: Theme.of(context).textTheme.bodySmall!
                              .copyWith(decoration: TextDecoration.underline),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Studio24 © 2025',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
