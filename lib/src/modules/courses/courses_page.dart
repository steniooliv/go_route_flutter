import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final courses = Courses.data;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Cursos"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: courses.length,
          itemBuilder: ((context, int index) => ListTile(
                onTap: () => GoRouter.of(context).push(
                  "/courses/${courses[index].id}",
                ),
                title: Text(courses[index].title),
                subtitle: Text(courses[index].description),
                trailing: Text(
                    "R\$ ${(courses[index].value / 10).toStringAsFixed(2)}"),
              )),
        ),
      ),
    );
  }
}

class CourseModel {
  final String id;
  final String title;
  final String description;
  final int value;

  CourseModel({
    required this.id,
    required this.title,
    required this.description,
    required this.value,
  });
}

class Courses {
  static final data = [
    CourseModel(
      id: "flutter-starter",
      title: "Flutter Starter",
      description: "Aprenda a criar o seu primeiro contador",
      value: 5000,
    ),
    CourseModel(
      id: "flutter-basic",
      title: "Flutter Iniciante",
      description: "Crie seu primeiro App TODO",
      value: 20000,
    ),
    CourseModel(
      id: "flutter-intermediary",
      title: "Flutter Intermediário",
      description: "Aprenda sobre gerenciamento de estado",
      value: 100000,
    ),
    CourseModel(
      id: "flutter-advanced",
      title: "Flutter Avançado",
      description: "Arquitetura Limpa, SOLID e Design Patterns",
      value: 400000,
    ),
  ];

  static CourseModel course(String id) {
    return data.where((course) => course.id == id).first;
  }
}
