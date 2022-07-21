import 'package:flutter/material.dart';
import 'package:go_route_flutter/src/modules/home/home_page.dart';
import 'package:go_route_flutter/src/modules/home/profile/profile_page.dart';
import 'package:go_router/go_router.dart';

final homeRoutes = <GoRoute>[
  GoRoute(
    path: "/home",
    name: "home",
    pageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: const HomePage(),
    ),
    routes: <GoRoute>[
      GoRoute(
        path: "profile",
        name: "profile",
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const ProfilePage(),
        ),
      )
    ],
  ),
];
