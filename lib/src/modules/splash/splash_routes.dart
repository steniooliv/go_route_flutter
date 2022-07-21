import 'package:flutter/material.dart';
import 'package:go_route_flutter/src/modules/login/login_page.dart';
import 'package:go_route_flutter/src/modules/splash/splash_page.dart';
import 'package:go_router/go_router.dart';

final splashRoutes = <GoRoute>[
  GoRoute(
    path: "/",
    name: "splash",
    pageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: const SplashPage(),
    ),
  ),
];
