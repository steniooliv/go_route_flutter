import 'package:flutter/material.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Courses"),
      ),
      body: Center(
        child: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.computer),
        ),
      ),
    );
  }
}
