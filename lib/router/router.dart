// TODO: Сделать навигацию
import 'package:flutter_design_application/pages/contact_page.dart';
import 'package:flutter_design_application/pages/home_page.dart';
import 'package:flutter_design_application/pages/location_page.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const HomePage()),
    GoRoute(
      path: '/location',
      builder: (context, state) => const LocationPage(),
    ),
    GoRoute(path: '/contact', builder: (context, state) => const ContactPage()),
  ],
);
