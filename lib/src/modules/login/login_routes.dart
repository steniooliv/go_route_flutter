import 'package:flutter/material.dart';
import 'package:go_route_flutter/src/modules/login/login_page.dart';
import 'package:go_router/go_router.dart';

final loginRoutes = <GoRoute>[
  GoRoute(
    path: "/login",
    name: "login",
    pageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: const LoginPage(),
    ),
  ),
];
