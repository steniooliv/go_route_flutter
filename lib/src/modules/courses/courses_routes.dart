import 'package:flutter/material.dart';
import 'package:go_route_flutter/src/modules/courses/courses_page.dart';
import 'package:go_route_flutter/src/modules/courses/details/details_page.dart';
import 'package:go_router/go_router.dart';

final coursesRoute = <GoRoute>[
  GoRoute(
    path: "/courses",
    name: "courses",
    pageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: const CoursesPage(),
    ),
  ),
  GoRoute(
    path: "/courses/:id",
    name: "details",
    pageBuilder: (context, state) {
      final course = Courses.course(state.params["id"]!);

      return MaterialPage(
        key: state.pageKey,
        child: CourseDetailsPage(course: course),
      );
    },
  )
];
