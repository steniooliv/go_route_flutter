import 'package:flutter/material.dart';
import 'package:go_route_flutter/src/modules/courses/courses_page.dart';

class CourseDetailsPage extends StatefulWidget {
  final CourseModel course;

  const CourseDetailsPage({
    Key? key,
    required this.course,
  }) : super(key: key);

  @override
  State<CourseDetailsPage> createState() => _CourseDetailsPageState();
}

class _CourseDetailsPageState extends State<CourseDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detalhes do Curso"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(widget.course.title),
                    Text(widget.course.description),
                    Text(
                        "R\$ ${(widget.course.value / 10).toStringAsFixed(2)}"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
