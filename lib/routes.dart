import 'package:flutter/foundation.dart';
import 'package:go_route_flutter/src/modules/courses/courses_routes.dart';
import 'package:go_route_flutter/src/modules/home/home_routes.dart';
import 'package:go_route_flutter/src/modules/login/login_routes.dart';
import 'package:go_route_flutter/src/modules/splash/splash_routes.dart';
import 'package:go_router/go_router.dart';

final routes = GoRouter(
  urlPathStrategy: UrlPathStrategy.path,
  initialLocation: kIsWeb ? "/login" : "/",
  routes: [
    ...splashRoutes,
    ...loginRoutes,
    ...homeRoutes,
    ...coursesRoute,
  ],
);
