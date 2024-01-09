import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sonrize_web/core/values/values.dart';
import 'package:sonrize_web/ui/screens/about/about_screen.dart';
import 'package:sonrize_web/ui/screens/contact/contact_screen.dart';
import 'package:sonrize_web/ui/screens/product/product_screen.dart';
import 'package:sonrize_web/ui/screens/error/error_screen.dart';
import 'package:sonrize_web/ui/screens/home/home_screen.dart';

final GoRouter routerConfig = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: ConstString.INITIAL_ROUTE,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
        routes: <RouteBase>[
          GoRoute(
            path: ConstString.ABOUT_ROUTE,
            builder: (BuildContext context, GoRouterState state) {
              return const AboutScreen();
            },
          ),
          GoRoute(
            path: ConstString.PRODUCT_ROUTE,
            builder: (BuildContext context, GoRouterState state) {
              return const ProductScreen();
            },
          ),
          GoRoute(
            path: ConstString.CONTACT_ROUTE,
            builder: (BuildContext context, GoRouterState state) {
              return ContactScreen();
            },
          ),
        ],
      ),
    ],
    errorPageBuilder: (BuildContext context, GoRouterState state) {
      return const MaterialPage(child: ErrorScreen());
    });
